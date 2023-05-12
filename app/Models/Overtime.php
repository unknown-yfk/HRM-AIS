<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Overtime extends Model
{
    use HasFactory;
    protected $fillable = [
        'ot_id',
        'ot_employee',
        'ot_date',
        'ot_hours',
        'description'
    ];
}
