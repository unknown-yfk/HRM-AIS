<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ShiftScheduleModel extends Model
{
    use HasFactory;

    protected $table = 'shifts_schedule';
    protected $fillable = [
        'department_id',
        'employee_id',
        'shift_id',
        'date',
        'start_time',
        'end_time',
        'note',
        'status',
        
    ];
    // Department realationships
    public function department()
    {
        return $this->belongsTo(department::class, 'department_id');
    }
    //employee relationships
    public function employee()
    {
        return $this->belongsTo(Employee::class, 'employee_id');
    }
    //shift relationships
    public function shift()
    {
        return $this->belongsTo(ShiftsEmployeeModel::class, 'shift_id');
    }
}