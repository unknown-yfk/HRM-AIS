<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;
use App\Models\ShiftsEmployeeModel;
use DB;
use Auth;
use DateTime;

class ShiftsEmployeeController extends Controller
{
    // leaves
    public function shifts()
    {
        $shifts = ShiftsEmployeeModel::all();
    
        return view('form.shiftlist',compact('shifts'));
    }
    // save record
    public function saveRecord(Request $request)
    {
        $request->validate([
            'shift_type'    => 'required|string|max:255',
            'start_time'    => 'required|string|max:255',
            'end_time'      => 'required|string|max:255',
            'status'        => 'nullable|string|max:255',
            'note'          => 'nullable|string|max:255',
        ]);

        // dd($request->all());
        DB::beginTransaction();
        try {

            $shifts = new ShiftsEmployeeModel;
            $shifts->user_id        = $request->user_id;
            $shifts->shift_type     = $request->shift_type;
            $shifts->start_time     = $request->start_time;
            $shifts->end_time       = $request->end_time;
            $shifts->status         = $request->status;
            $shifts->note           = $request->note;
            $shifts->save();
            
            DB::commit();
            Toastr::success('successfully :)','Success');
            return redirect()->back();
        } catch(\Exception $e) {
            DB::rollback();
            Toastr::error('Add Leaves fail :)','Error');
            return redirect()->back();
        }
    }

    // edit record
    public function editRecordshifts(Request $request)
    {
        DB::beginTransaction();
        try {

            $update = [
                'id'            => $request->id,
                'shift_type'    => $request->shift_type,
                'start_time'    => $request->start_time,
                'end_time'      => $request->end_time,
                'note'          => $request->note,
                'status'        => $request->status,
            ];
        //  dd($request->all());
        ShiftsEmployeeModel::where('id',$request->id)->update($update);
            DB::commit();
            Toastr::success('Updated successfully :)','Success');
            return redirect()->back();
        } catch(\Exception $e) {
            DB::rollback();
            Toastr::error('Update fail :)','Error');
            return redirect()->back();
        }
    }

    // delete record
    public function deleteshifts(Request $request)
    {
        try {

            ShiftsEmployeeModel::destroy($request->id);
            Toastr::success('deleted successfully :)','Success');
            return redirect()->back();
        
        } catch(\Exception $e) {

            DB::rollback();
            Toastr::error('delete fail :)','Error');
            return redirect()->back();
        }
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
        return view('form.leavesemployee');
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