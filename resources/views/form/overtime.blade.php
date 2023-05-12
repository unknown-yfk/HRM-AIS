
@extends('layouts.master')
@section('content')
    <!-- Page Wrapper -->
    <div class="page-wrapper">
                
        <!-- Page Content -->
        <div class="content container-fluid">
        
            <!-- Page Header -->
            <div class="page-header">
                <div class="row align-items-center">
                    <div class="col">
                        <h3 class="page-title">Overtime</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Overtime</li>
                        </ul>
                    </div>
                    <div class="col-auto float-right ml-auto">
                        <a href="#" class="btn add-btn" data-toggle="modal" data-target="#add_overtime"><i class="fa fa-plus"></i> Add Overtime</a>
                    </div>
                </div>
            </div>
            <!-- /Page Header -->
               <!-- /Page Header -->
               {!! Toastr::message() !!}
            <!-- Overtime Statistics -->
            <div class="row">
                <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
                    <div class="stats-info">
                        <h6>Overtime Employee</h6>
                              @php 
                               $employees=DB::table('overtimes')->select('id')->Count('id');
                             @endphp
                         <h4>{{$employees}} <span>this month</span></h4>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
                    <div class="stats-info">
                        <h6>Overtime Hours</h6>
                             @php 
                               $ot_hour=DB::table('overtimes')->select('ot_hours')->SUM('ot_hours');
                             @endphp
                        <h4>{{$ot_hour}} <span>this month</span></h4>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
                    <div class="stats-info">
                        <h6>Pending Request</h6>
                        <h4>23</h4>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
                    <div class="stats-info">
                        <h6>Rejected</h6>
                        <h4>5</h4>
                    </div>
                </div>
            </div>
            <!-- /Overtime Statistics -->
            
            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-striped custom-table mb-0 datatable">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>OT Date</th>
                                    <th class="text-center">OT Hours</th>
                                    <!-- <th>OT Type</th> -->
                                    <th>Description</th>
                                    <!-- <th class="text-center">Status</th> -->
                                    <!-- <th>Approved by</th> -->
                                    <th class="text-right">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach ($ot as $key=>$otList )
                                <tr>
                                <td>{{ ++$key }}</td>
                                <td hidden class="id">{{ $otList->id }}</td>
                                <td hidden class="edit_ot_id">{{ $otList->user_id }}</td>
                                    <td>
                                        <span hidden class="image">{{ $otList->avatar}}</span>
                                    <h2 class="table-avatar">
                                        <a href="{{ url('employee/profile/'.$otList->user_id) }}" class="avatar"><img src="{{ URL::to('/assets/images/'. $otList->avatar) }}" alt="{{ $otList->avatar }}"></a>
                                            <a  class="ot_employee" href="#">{{ $otList->ot_employee }} </a>
                                        </h2>
                                    </td>
                                    <td class="ot_date">{{ $otList->ot_date}}</td>
                                    <td class="ot_hours">{{ $otList->ot_hours}}</td>
                                    <!-- <td>Normal day OT 1.5x</td> -->
                                    <td>{{ $otList->description}}</td>
                                    <!-- <td class="text-center">
                                        <div class="action-label">
                                            <a class="btn btn-white btn-sm btn-rounded" href="javascript:void(0);">
                                                <i class="fa fa-dot-circle-o text-purple"></i> New
                                            </a>
                                        </div>
                                    </td> -->
                                    <!-- <td>
                                        <h2 class="table-avatar">
                                            <a href="profile.html" class="avatar avatar-xs"><img src="assets/img/profiles/avatar-09.jpg" alt=""></a>
                                            <a href="#">Richard Miles</a>
                                        </h2>
                                    </td> -->
                                    <td class="text-right">
                                        <div class="dropdown dropdown-action">
                                            <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="material-icons">more_vert</i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item edit_overtime"  href="#" data-toggle="modal" data-target="#edit_overtime"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                                <a class="dropdown-item delete_overtime" href="#" data-toggle="modal" data-target="#delete_overtime"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Page Content -->
        
        <!-- Add Overtime Modal -->
        <div id="add_overtime" class="modal custom-modal fade" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Add Overtime</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                    <form action="{{ route('form/overtime/save') }}" method="POST">
                                @csrf
                                    <div class="form-group">
                                      <label>Select Employee <span class="text-danger">*</span></label>
                                        <select class="select" id="ot_employee" name="ot_employee" @error('ot_employee') is-invalid @enderror>
                                             <option selected disable> Select Leader</option>
                                               @foreach ($empList as $key=>$emp )
                                             <option value="{{ $emp->name }}" data-ot_id={{ $emp->user_id }}>{{ $emp->name }}</option>
                                                @endforeach
                                         </select>   
                                   </div>
                            <input type="hidden" class="form-control" id="ot_id" name="ot_id" readonly>
                            <div class="form-group">
                                <label>Overtime Date <span class="text-danger">*</span></label>
                                <div class="cal-icon">
                                    <input class="form-control datetimepicker" name="ot_date" id="ot_date" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Overtime Hours <span class="text-danger">*</span></label>
                                <input class="form-control" type="text" name="ot_hours" id="ot_hours">
                            </div>
                            <div class="form-group">
                                <label>Description <span class="text-danger">*</span></label>
                                <textarea rows="4" class="form-control" name="description" id="description"></textarea>
                            </div>
                            <div class="submit-section">
                                <button class="btn btn-primary submit-btn">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Add Overtime Modal -->
       
        <!-- Edit Overtime Modal -->
        <div id="edit_overtime" class="modal custom-modal fade" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Edit Overtime</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                    <form action="{{ route('form/overtime/update') }}" method="POST">
                            @csrf
                            <input  type="hidden" name="id" id="e_id" value="">
                            
                                <div class="form-group">
                                <label>Select Employee <span class="text-danger">*</span></label>
                                <select class="select" id="edit_ot_employee" name="ot_employee" @error('ot_employee') is-invalid @enderror>
                                    <option selected disable> Select Leader</option>
                                    @foreach ($empList as $key=>$emp )
                                    <option value="{{ $emp->name }}" data-ot_id={{ $emp->user_id }}>{{ $emp->name }}</option>
                                        @endforeach
                                </select>  
                            </div>
                            <input type="hidden" class="form-control" id="edit_ot_id" name="ot_id" readonly>
                            <div class="form-group">
                                <label>Overtime Date <span class="text-danger">*</span></label>
                                <div class="cal-icon">
                                    <input class="form-control datetimepicker" name="ot_date" id="edit_ot_date" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Overtime Hours <span class="text-danger">*</span></label>
                                <input class="form-control" type="text" name="ot_hours" id="edit_ot_hours">
                            </div>
                            <div class="form-group">
                                <label>Description <span class="text-danger">*</span></label>
                                <textarea rows="4" class="form-control" name="description" id="edit_description"></textarea>
                            </div>
                            <div class="submit-section">
                                <button class="btn btn-primary submit-btn">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Edit Overtime Modal -->
        
        <!-- Delete Overtime Modal -->
        <div class="modal custom-modal fade" id="delete_overtime" role="dialog">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="form-header">
                            <h3>Delete Overtime</h3>
                            <p>Are you sure want to Cancel this?</p>
                        </div>
                        <div class="modal-btn delete-action">
                        <form action="{{ route('form/overtime/delete') }}" method="POST">
                              @csrf
                                <input type="hidden" name="id" class="e_id" value="">
                            <div class="row">
                                <div class="col-6">
                                <button type="submit" class="btn btn-primary continue-btn submit-btn">Delete</button>
                                </div>
                                <div class="col-6">
                                    <a href="javascript:void(0);" data-dismiss="modal" class="btn btn-primary cancel-btn">Cancel</a>
                                </div>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Delete Overtime Modal -->
        
    </div>
    <!-- /Page Wrapper -->
  
    @section('script')
    <script>

          // toogle save leader id

    $('#ot_employee').on('change',function()
        {
            $('#ot_id').val($(this).find(':selected').data('ot_id'));
       
        });

        </script>



</script>

{{-- update js --}}
<script>
// select auto id
$(document).on('click','.edit_overtime',function()
{
    var _this = $(this).parents('tr');
    $('#edit_ot_id').val(_this.find('.edit_ot_id').text());
    $('#e_id').val(_this.find('.id').text());
    var ot_employee = (_this.find(".ot_employee").text());
    var _option = '<option selected value="' +ot_employee+ '">' + _this.find('.ot_employee').text() + '</option>'
    $( _option).appendTo("#edit_ot_employee");
    $('#edit_ot_date').val(_this.find('.ot_date').text());
    $('#edit_ot_hours').val(_this.find('.ot_hours').text());

});
</script>





{{-- delete model --}}
    <script>
        $(document).on('click','.delete_overtime',function()
        {
            var _this = $(this).parents('tr');
            $('.e_id').val(_this.find('.id').text());
        });
    </script>


    @endsection
@endsection
