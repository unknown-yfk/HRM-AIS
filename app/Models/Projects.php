<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Projects extends Model
{
    use HasFactory;

    protected $fillable = [ 
        'leader_id',
        'project_name',
        'project_leader',
        'deadline',
        'status',
        'description'
    ];



  
}
