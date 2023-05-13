<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;
use App\Models\LeavesAdmin;
use App\Models\LeavesEmployee;
use DB;
use DateTime;

class LeavesController extends Controller
{
    // leaves
    public function leaves()
    {
        $leaves = DB::table('leaves_admins')
                    ->join('users', 'users.user_id', '=', 'leaves_admins.user_id')
                    ->select('leaves_admins.*', 'users.position','users.name','users.avatar')
                    ->get();

        return view('form.leaves',compact('leaves'));
    }
    // save record
    public function saveRecord(Request $request)
    {
        $request->validate([
            'leave_type'   => 'required|string|max:255',
            'from_date'    => 'required|string|max:255',
            'to_date'      => 'required|string|max:255',
            'leave_reason' => 'required|string|max:255',
        ]);

        DB::beginTransaction();
        try {

            $from_date = new DateTime($request->from_date);
            $to_date = new DateTime($request->to_date);
            $day     = $from_date->diff($to_date);
            $days    = $day->d;

            $leaves = new LeavesAdmin;
            $leaves->user_id        = $request->user_id;
            $leaves->leave_type    = $request->leave_type;
            $leaves->from_date     = $request->from_date;
            $leaves->to_date       = $request->to_date;
            $leaves->day           = $days;
            $leaves->leave_reason  = $request->leave_reason;
            $leaves->save();
            
            DB::commit();
            Toastr::success('Create new Leaves successfully :)','Success');
            return redirect()->back();
        } catch(\Exception $e) {
            DB::rollback();
            Toastr::error('Add Leaves fail :)','Error');
            return redirect()->back();
        }
    }

    // edit record
    public function editRecordLeave(Request $request)
    {
        DB::beginTransaction();
        try {

            $from_date = new DateTime($request->from_date);
            $to_date = new DateTime($request->to_date);
            $day     = $from_date->diff($to_date);
            $days    = $day->d;

            $update = [
                'id'           => $request->id,
                'leave_type'   => $request->leave_type,
                'from_date'    => $request->from_date,
                'to_date'      => $request->to_date,
                'day'          => $days,
                'leave_reason' => $request->leave_reason,
            ];

            LeavesAdmin::where('id',$request->id)->update($update);
            DB::commit();
            Toastr::success('Updated Leaves successfully :)','Success');
            return redirect()->back();
        } catch(\Exception $e) {
            DB::rollback();
            Toastr::error('Update Leaves fail :)','Error');
            return redirect()->back();
        }
    }

    // delete record
    public function deleteLeave(Request $request)
    {
        try {

            LeavesAdmin::destroy($request->id);
            Toastr::success('Leaves admin deleted successfully :)','Success');
            return redirect()->back();
        
        } catch(\Exception $e) {

            DB::rollback();
            Toastr::error('Leaves admin delete fail :)','Error');
            return redirect()->back();
        }
    }

    // leaveSettings
    public function leaveSettings()
    {
        return view('form.leavesettings');
    }

    // attendance admin
    public function attendanceIndex()
    {
        return view('form.attendance');
    }

    // attendance employee
    public function AttendanceEmployee()
    {
        return view('form.attendanceemployee');
    }


    // leaves Employee
    public function leavesEmployee()
    {

        $leaves_employee = DB::table('leaves_employees')
        ->join('employees', 'employees.employee_id', '=', 'leaves_employees.employee_id')
        ->select('leaves_employees.*','employees.name')
        ->get();

        return view('form.leavesemployee',compact('leaves_employee'));
        
    }   

 // save record
 public function saveleavesEmployee(Request $request)
 {
     $request->validate([

      
         'leave_type'   => 'required|string|max:255',
         'from_date'    => 'required|string|max:255',
         'to_date'      => 'required|string|max:255',
         'rem_leaves'   => 'required|string|max:255',
         'leave_reason' => 'required|string|max:255',

     ]);

     DB::beginTransaction();
     try {

         $from_date = new DateTime($request->from_date);
         $to_date  =  new DateTime($request->to_date);
         $day      =  $from_date->diff($to_date);
         $days     =  $day->d;

         $leaves = new LeavesEmployee;
         $leaves->employee_id   = $request->employee_id;
         $leaves->leave_type    = $request->leave_type;
         $leaves->from_date     = $request->from_date;
         $leaves->to_date       = $request->to_date;
         $leaves->day           = $days;
         $leaves->rem_leaves    = $request->rem_leaves;
         $leaves->leave_reason  = $request->leave_reason;
         $leaves->save();
         
         DB::commit();
         Toastr::success('Create new Leaves successfully :)','Success');
         return redirect()->back();
     } catch(Exception $e) {
         DB::rollback();
         Toastr::error('Add Leaves fail :)','Error');
         return redirect()->back();
          throw new Exception;
     }
 }







































    // shiftscheduling
    public function shiftScheduLing()
    {
        return view('form.shiftscheduling');
    }

    // shiftList
    public function shiftList()
    {
        return view('form.shiftlist');
    }
}
