<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LeavesEmployee extends Model
{
    use HasFactory;
    protected $fillable = [

        'employee_id',
        'leave_type',
        'from_date',
        'to_date',
        'day',
        'rem_leaves',
        'leave_reason',
    ];

}