<?php

namespace App\Http\Controllers\Payment;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Flasher\Laravel\Facade\Flasher;
use Illuminate\Http\Request;
use App\Models\PrintSetting;
use App\Traits\FeesStudent;
use App\Models\Setting;
use App\Models\Fee;
use Paystack;

class PaystackController extends Controller
{
    use FeesStudent;

    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('paystack');
    }

    /**
     * Redirect the User to Paystack Payment Page
     * @return Url
     */
    public function redirectToGateway(Request $request)
    {
        // Payment Process
        try {
            // Validate that the fee_id and the paid_amount are present
            $request->validate([
                'fee_id' => 'required|exists:fees,id', // Ensure fee_id is valid
                'paid_amount' => 'required|numeric|min:1' // The amount the user entered to pay
            ]);

            $fee_id = $request->fee_id;
            $amount_to_pay = $request->paid_amount;

            // IMPORTANT: You might want to compare $amount_to_pay against the fee's remaining_amount
            // to prevent overpayment or ensure it's within a valid range.
            $fee = Fee::where('id', $fee_id)->first();
            if (!$fee) {
                Flasher::addError(__('msg_not_found'));
                return redirect()->back();
            }

            $print = PrintSetting::where('slug', 'fees-receipt')->first();

            $data = array(
                "amount" => $amount_to_pay * 100, // Use the user's input amount, converted to cents/kobo
                "reference" => Paystack::genTranxRef(),
                "email" => $request->student_email ?? 'no-reply@example.com', // Ensure this email is correctly passed from the form or retrieved
                "currency" => 'KES', // This is now fixed as per previous discussion
                "orderID" => str_pad($fee_id, 6, '0', STR_PAD_LEFT),
                "callback_url" => route('payment.paystack.callback'),
                "metadata" => [
                    "fee_id" => $fee_id,
                    "description" => __('field_receipt') .': '. ($print->prefix ?? '') . str_pad($fee_id, 6, '0', STR_PAD_LEFT),
                    "amount_paid_by_user" => $amount_to_pay, // Store the exact amount the user intended to pay
                    // Store the current user's guard to redirect correctly after callback
                    "user_guard" => Auth::guard('web')->check() ? 'web' : (Auth::guard('student')->check() ? 'student' : null),
                ],
            );

            // Charge Fee If Status Is Unpaid
            if(isset($fee->status) && $fee->status == 0){
                return Paystack::getAuthorizationUrl($data)->redirectNow();
            } else {
                Flasher::addError(__('msg_fee_already_paid'), __('msg_error'));
                return redirect()->back();
            }

        } catch(\Exception $e) {
            \Log::error('PayStack Payment Error in redirectToGateway: ' . $e->getMessage());

            Flasher::addError(__('msg_something_went_wrong'), __('msg_error'));

            return redirect()->back();
        }
    }

    /**
     * Obtain Paystack payment information
     * @return void
     */
    public function handleGatewayCallback()
    {
        try {
            $paymentDetails = Paystack::getPaymentData();

            // Determine the redirect route based on the metadata or current authentication
            $redirectRoute = 'admin.fees-student.index'; // Default for safety

            // Check if payment was successful
            if (isset($paymentDetails['data']['status']) && $paymentDetails['data']['status'] == 'success') {

                // Get fee ID
                $fee_id = $paymentDetails['data']['metadata']['fee_id'];
                // Retrieve the amount the user intended to pay from metadata
                $amount_paid_by_user = $paymentDetails['data']['metadata']['amount_paid_by_user'] ?? $paymentDetails['data']['amount'] / 100; // Fallback if not stored

                // Get the user's guard from metadata (if stored)
                $userGuard = $paymentDetails['data']['metadata']['user_guard'] ?? null;

                // Update Fee
                if(isset($fee_id)){
                    // Pass the actual amount the user paid to your payStudentFee method
                    $this->payStudentFee($fee_id, 9, $amount_paid_by_user);
                }

                Flasher::addSuccess(__('msg_your_payment_successful'), __('msg_success'));

            } else {
                Flasher::addError(__('msg_something_went_wrong_with_payment'), __('msg_error'));
            }

            // --- CONDITIONAL REDIRECT LOGIC ---
            if ($userGuard === 'student') {
                $redirectRoute = 'student.fees.index';
            } else {
                // If userGuard is 'web' or null/unknown, default to admin route
                $redirectRoute = 'admin.fees-student.index';
            }

            return redirect()->route($redirectRoute);

        } catch (\Exception $e) {
            \Log::error('PayStack Payment Error in handleGatewayCallback: ' . $e->getMessage());

            Flasher::addError(__('msg_something_went_wrong'), __('msg_error'));

            // If an exception occurs, try to redirect to the correct dashboard based on current auth
            if (Auth::guard('student')->check()) {
                return redirect()->route('student.fees.index');
            } else {
                return redirect()->route('admin.fees-student.index');
            }
        }
    }
}