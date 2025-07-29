<?php

namespace App\Traits;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request; // Not directly used in these methods, but often in traits
use Illuminate\Support\Str;
use App\Models\Transaction;
use App\Models\Fee;
use App\Models\FeesDiscount; // Make sure this is imported for availability()
use Carbon\Carbon;

trait FeesStudent {

    /**
     * Calculate the net amount for a fee.
     * @param int $fee_id
     * @return float
     */
    public function netAmount($fee_id)
    {
        //
        $fee = Fee::find($fee_id);

        if (!$fee) {
            return 0.00; // Or throw an exception, handle as appropriate
        }

        // Discount Calculation
        $discount_amount = 0;
        $today_date_str = date('Y-m-d'); // Use distinct variable name for clarity

        if(isset($fee->category)){
            foreach($fee->category->discounts->where('status', '1') as $discount){
                $availability = \App\Models\FeesDiscount::availability($discount->id, $fee->studentEnroll->student_id);

                if(isset($availability)){
                    if($discount->start_date <= $today_date_str && $discount->end_date >= $today_date_str){
                        if($discount->type == '1'){
                            $discount_amount += $discount->amount;
                        }
                        else{
                            $discount_amount += ( ($fee->fee_amount / 100) * $discount->amount);
                        }
                    }
                }
            }
        }


        // Fine Calculation
        $fine_amount = 0;
        // Only apply fine if fee is pending and due date is past
        // This logic should match what's used in the main FeesStudentController@index for consistency
        if($fee->status == '0' && $fee->due_date < date("Y-m-d")) {
            $due_date_timestamp = strtotime($fee->due_date);
            $current_date_timestamp = strtotime(date('Y-m-d'));
            $days = (int)(($current_date_timestamp - $due_date_timestamp)/86400);

            if(isset($fee->category)){
                foreach($fee->category->fines->where('status', '1') as $fine){
                    if($fine->start_day <= $days && $fine->end_day >= $days){
                        if($fine->type == '1'){
                            $fine_amount += $fine->amount;
                        }
                        else{
                            $fine_amount += ( ($fee->fee_amount / 100) * $fine->amount);
                        }
                    }
                }
            }
        }


        // Net Amount Calculation
        $net_amount = ($fee->fee_amount - $discount_amount) + $fine_amount;

        return $net_amount;
    }

    /**
     * Pay Student Fee
     * @param int $fee_id The ID of the fee to update.
     * @param int $method The payment method ID (e.g., 9 for Paystack).
     * @param float $amount_paid_by_user The actual amount paid in this transaction.
     * @return bool True if successful, false otherwise.
     */
    public function payStudentFee($fee_id, $method, $amount_paid_by_user) // <--- Added $amount_paid_by_user
    {
        $fee = Fee::find($fee_id);

        if (!$fee) {
            \Log::error("payStudentFee: Fee with ID {$fee_id} not found.");
            return false;
        }

        DB::beginTransaction();
        try {
            // Recalculate discount and fine amounts for current state
            // (This logic is duplicated from netAmount, consider refactoring if complex)
            $discount_amount = 0;
            $fine_amount = 0;
            $today_date_str = date('Y-m-d');

            if(isset($fee->category)){
                foreach($fee->category->discounts->where('status', '1') as $discount){
                    $availability = \App\Models\FeesDiscount::availability($discount->id, $fee->studentEnroll->student_id);
                    if(isset($availability)){
                        if($discount->start_date <= $today_date_str && $discount->end_date >= $today_date_str){
                            if($discount->type == '1'){
                                $discount_amount += $discount->amount;
                            } else {
                                $discount_amount += ( ($fee->fee_amount / 100) * $discount->amount);
                            }
                        }
                    }
                }
            }

            if($fee->status == '0' && $fee->due_date < date("Y-m-d")) {
                $due_date_timestamp = strtotime($fee->due_date);
                $current_date_timestamp = strtotime(date('Y-m-d'));
                $days = (int)(($current_date_timestamp - $due_date_timestamp)/86400);

                if(isset($fee->category)){
                    foreach($fee->category->fines->where('status', '1') as $fine){
                        if($fine->start_day <= $days && $fine->end_day >= $days){
                            if($fine->type == '1'){
                                $fine_amount += $fine->amount;
                            } else {
                                $fine_amount += ( ($fee->fee_amount / 100) * $fine->amount);
                            }
                        }
                    }
                }
            }

            // Calculate the actual NET AMOUNT for this fee item (total expected)
            $net_amount_calculated = ($fee->fee_amount - $discount_amount) + $fine_amount;

            // --- CRITICAL FIXES START HERE ---

            // 1. Calculate the NEW CUMULATIVE PAID AMOUNT for this fee item
            // This adds the current payment to what was already paid (from DB)
            $new_cumulative_paid_amount = ($fee->paid_amount ?? 0) + $amount_paid_by_user;

            // 2. Calculate the NEW REMAINING AMOUNT for this fee item
            // This subtracts the new cumulative paid amount from the total expected net amount
            $new_remaining_amount = $net_amount_calculated - $new_cumulative_paid_amount;
            // Ensure remaining_amount doesn't go below zero (e.g., in case of overpayment)
            $fee->remaining_amount = max(0, $new_remaining_amount);

            // --- UPDATE FEE DATA ---
            $fee->discount_amount = $discount_amount;
            $fee->fine_amount = $fine_amount;
            $fee->paid_amount = $new_cumulative_paid_amount; // Store the new cumulative total paid
            $fee->pay_date = Carbon::today(); // Payment date is today
            $fee->payment_method = $method; // Payment method (e.g., 9 for Paystack)

            // 3. Set status based on the new remaining_amount
            if ($fee->remaining_amount <= 0.001) { // Use a small tolerance for floating point comparisons
                $fee->status = '1'; // Fully paid
            } else {
                $fee->status = '0'; // Still pending or partially paid
            }
            // --- CRITICAL FIXES END HERE ---

            $fee->updated_by = Auth::guard('web')->user()->id; // Assuming admin user is updating
            $fee->save();


            // --- TRANSACTION LOGGING ---
            $transaction = new Transaction;
            $transaction->transaction_id = Str::random(16);
            $transaction->amount = $amount_paid_by_user; // <--- This must be the actual amount paid in THIS transaction
            $transaction->type = '1'; // Assuming '1' is income/received
            $transaction->created_by = Auth::guard('web')->user()->id;
            // Link to student via enrollment
            if ($fee->studentEnroll && $fee->studentEnroll->student) {
                $fee->studentEnroll->student->transactions()->save($transaction);
            } else {
                \Log::warning("payStudentFee: Could not link transaction to student for fee ID {$fee_id}.");
            }

            DB::commit();

            return true; // Indicate success

        } catch (\Exception $e) {
            DB::rollback();
            \Log::error("Error in payStudentFee for fee ID {$fee_id}: " . $e->getMessage() . " on line " . $e->getLine());
            return false; // Indicate failure
        }
    }
}