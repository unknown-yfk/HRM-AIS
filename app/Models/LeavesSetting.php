<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LeavesSetting extends Model
{
    use HasFactory;
    protected $table = 'leaves_settings';
    protected $fillable = [
        'name',
        'days',

    ];
}