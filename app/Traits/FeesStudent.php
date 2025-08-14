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
    public function payStudentFee($fee_id, $method, $amount_paid_by_user)
    {
        $fee = Fee::find($fee_id);
        if (!$fee) {
            \Log::error("payStudentFee: Fee with ID {$fee_id} not found.");
            return false;
        }

        DB::beginTransaction();
        try {
            // --- Recalculate discount and fine ---
            $discount_amount = 0;
            $fine_amount = 0;
            $today_date_str = date('Y-m-d');

            if (isset($fee->category)) {
                foreach ($fee->category->discounts->where('status', '1') as $discount) {
                    $availability = \App\Models\FeesDiscount::availability($discount->id, $fee->studentEnroll->student_id);
                    if ($availability && 
                        $discount->start_date <= $today_date_str && 
                        $discount->end_date >= $today_date_str) 
                    {
                        if ($discount->type == '1') {
                            $discount_amount += $discount->amount;
                        } else {
                            $discount_amount += (($fee->fee_amount / 100) * $discount->amount);
                        }
                    }
                }
            }

            if ($fee->status == '0' && $fee->due_date < date("Y-m-d")) {
                $days = (int)((strtotime(date('Y-m-d')) - strtotime($fee->due_date))/86400);
                if (isset($fee->category)) {
                    foreach ($fee->category->fines->where('status', '1') as $fine) {
                        if ($fine->start_day <= $days && $fine->end_day >= $days) {
                            if ($fine->type == '1') {
                                $fine_amount += $fine->amount;
                            } else {
                                $fine_amount += (($fee->fee_amount / 100) * $fine->amount);
                            }
                        }
                    }
                }
            }

            $net_amount_calculated = ($fee->fee_amount - $discount_amount) + $fine_amount;

            // --- Calculate new cumulative paid amount ---
            $new_cumulative_paid_amount = ($fee->paid_amount ?? 0) + $amount_paid_by_user;

            // --- Calculate remaining (just for status logic, not DB storage) ---
            $new_remaining_amount = $net_amount_calculated - $new_cumulative_paid_amount;
            $remaining_amount = max(0, $new_remaining_amount); // not saved to DB

            // --- Update Fee record ---
            $fee->discount_amount = $discount_amount;
            $fee->fine_amount = $fine_amount;
            $fee->paid_amount = $new_cumulative_paid_amount;
            $fee->pay_date = Carbon::today();
            $fee->payment_method = $method;

            // Update status only
            $fee->status = ($remaining_amount <= 0.001) ? '1' : '0';
            $fee->updated_by = Auth::id() ?? 1;
            $fee->save();

            // --- Transaction Log ---
            $transaction = new Transaction;
            $transaction->transaction_id = Str::random(16);
            $transaction->amount = $amount_paid_by_user;
            $transaction->type = '1';
            $transaction->created_by = Auth::id() ?? 1;

            if ($fee->studentEnroll && $fee->studentEnroll->student) {
                $fee->studentEnroll->student->transactions()->save($transaction);
            } else {
                \Log::warning("payStudentFee: Could not link transaction to student for fee ID {$fee_id}.");
            }

            DB::commit();
            return true;

        } catch (\Exception $e) {
            DB::rollback();
            \Log::error("Error in payStudentFee for fee ID {$fee_id}: " . $e->getMessage() . " on line " . $e->getLine());
            return false;
        }
    }
}