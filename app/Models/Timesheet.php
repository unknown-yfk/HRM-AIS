<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Timesheet extends Model
{
    use HasFactory;

    protected $fillable = [
        
        'project_name',
        'deadline',
        'reg_date',
        'assigned_hours',
        'description'
    ];

}
