<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\User;

class Expense extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'category_id', 'title', 'invoice_id', 'amount', 'date', 'reference', 'payment_method', 'note', 'attach', 'status', 'created_by', 'updated_by',
    ];

    public function category()
    {
        return $this->belongsTo(ExpenseCategory::class, 'category_id');
    }

    public function recordedBy()
    {
        return $this->belongsTo(User::class, 'created_by');
    }
}
