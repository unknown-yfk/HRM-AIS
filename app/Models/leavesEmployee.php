<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class leavesEmployee extends Model
{
    use HasFactory;
    protected $table = 'leaves_employees';
    protected $fillable = [
        'user_id',
        'leave_type',
        'status',
        'from_date',
        'to_date',
        'day',
        'leave_reason',
        'status',
    ];
}