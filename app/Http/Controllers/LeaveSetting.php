<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;
use App\Models\LeavesSetting;
use DB;
use DateTime;

class leaveSetting extends Controller
{
   // leaveSettings page
   public function index()
   {
       $leaveSettings = DB::table('leaves_settings')->get();
       return view('form.leavesettings',compact('leaveSettings'));
   }

   /** save record leave setting */
   public function saveRecord(Request $request)
   {
       $request->validate([
           'name' => 'required|string|max:255',
           'days' => 'required|string|max:255',
       ]);

       DB::beginTransaction();
       try{
               $leavesettings = new LeavesSetting;
               $leavesettings->name = $request->name;
               $leavesettings->days = $request->days;
               $leavesettings->save();
   
               DB::commit();
               Toastr::success('Add new Leave Setting successfully :)','Success');
               return redirect()->route('form/leavesettings/page');
       }catch(\Exception $e){
           DB::rollback();
           Toastr::error('Add new Leave Setting fail :)','Error');
           return redirect()->back();
       }
   }

   /** update record leave settings */
   public function updateRecord(Request $request)
   {
       DB::beginTransaction();
       try{
           // update table settings
           $leaveSettings = [
               'id'=>$request->id,
               'name'=>$request->name,
               'days'=>$request->days,
           ];
           LeavesSetting::where('id',$request->id)->update($leaveSettings);
       
           DB::commit();
           Toastr::success('updated record successfully :)','Success');
           return redirect()->route('form/leavesettings/page');
       } catch(\Exception $e) {
           DB::rollback();
           Toastr::error('updated record fail :)','Error');
           return redirect()->back();
       }
   }

   /** delete record leavesettings */
   public function deleteRecord(Request $request) 
   {
       try {

        LeavesSetting::destroy($request->id);
           Toastr::success('Selected Setting deleted successfully :)','Success');
           return redirect()->back();
       
       } catch(\Exception $e) {

           DB::rollback();
           Toastr::error('Setting delete fail :)','Error');
           return redirect()->back();
       }
   }

}