<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ShiftsEmployeeModel extends Model
{
    use HasFactory;

    protected $table = 'shifts';
    protected $fillable = [
        'user_id',
        'shift_type',
        'status',
        'start_time',
        'end_time',
        'note',
    ];
}