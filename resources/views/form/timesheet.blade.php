
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
                        <h3 class="page-title">Timesheet</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Timesheet</li>
                        </ul>
                    </div>
                    <div class="col-auto float-right ml-auto">
                        <a href="#" class="btn add-btn" data-toggle="modal" data-target="#add_todaywork"><i class="fa fa-plus"></i> Add Today Work</a>
                    </div>
                </div>
            </div>
             <!-- /Page Header -->
             {!! Toastr::message() !!}
            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-striped custom-table mb-0 datatable">
                            <thead>
                                <tr>
                                    <th>Employee</th>
                                    <th>Date</th>
                                    <th>Projects</th>
                                    <th class="text-center">Assigned Hours</th>
                                    <th class="text-center">Hours</th>
                                    <th class="d-none d-sm-table-cell">Description</th>
                                    <th class="text-right">Actions</th>
                                </tr>
                            </thead>
                            <tbody> 
                            @foreach ($timesheet as $key=>$views )
                                <tr>
                                    <td hidden class="id">{{ $views->id }}</td>
                                    <td>
                                        <h2 class="table-avatar">
                                            <a href="profile.html" class="avatar"><img alt="" src="assets/img/profiles/avatar-03.jpg"></a>
                                            <a href="profile.html">Tarah Shropshire <span>Android Developer</span></a>
                                        </h2>
                                    </td>
                                    <td  class="deadline">{{ $views->deadline }}</td>
                                    <td  class="project">{{ $views->project_name }}</td>
                                    <td  class="total_hrs">{{ $views->total_hrs }}</td>
                                    <td  class="assigned_hours">{{ $views->assigned_hours }}</td>
                                    <td  class="description">
                                        <p>{{ $views->description }}</p>
                                    </td>
                                    <td class="text-right">
                                        <div class="dropdown dropdown-action">
                                            <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="material-icons">more_vert</i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item edit_todaywork" href="#" data-toggle="modal" data-target="#edit_todaywork"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                                <a class="dropdown-item delete_workdetail" href="#" data-toggle="modal" data-target="#delete_workdetail"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
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
        
        <!-- Add Today Work Modal -->
        <div id="add_todaywork" class="modal custom-modal fade" role="dialog">
            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Add Today Work details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                    <form action="{{ route('form/timesheet/save') }}" method="POST">
                       @csrf
                      
                            <div class="row">
                                <div class="form-group col-sm-6">
                                    <div class="form-group">
                                    <label>Project <span class="text-danger">*</span></label>
                                <select class="select" name="project_name" id="project_name">
                                        <option selected disabled> --Select --</option>
                                        @foreach ($project as $pro )
                                        <option value="{{ $pro->project_name }}">{{ $pro->project_name }}</option>
                                        @endforeach
                                    </select> 
                            </div>
            
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-sm-4">
                                    <label>Deadline <span class="text-danger">*</span></label>
                                    <div class="cal-icon">
                                        <input class="form-control" value="{{ $pro->deadline }}" type="text" name="deadline" id="deadline">
                                    </div>
                                </div>
                                <div class="form-group col-sm-4">
                                    <label>Total Hours <span class="text-danger">*</span></label>
                                    <input class="form-control" type="text" name="total_hrs" id="total_hrs">
                                </div>
                                <div class="form-group col-sm-4">
                                    <label>Remaining Hours <span class="text-danger">*</span></label>
                                    <input class="form-control" type="text" name="remaining_hrs" id="remaining_hrs">
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-sm-6">
                                    <label>Date <span class="text-danger">*</span></label>
                                    <div class="cal-icon">
                                        <input class="form-control datetimepicker" name="reg_date" id="reg_date" type="text">
                                    </div>
                                </div>
                                <div class="form-group col-sm-6">
                                    <label>Hours <span class="text-danger">*</span></label>
                                    <input class="form-control" type="text" name="assigned_hours" id="assigned_hours">
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Description <span class="text-danger">*</span></label>
                                <textarea rows="4" type="text" class="form-control" name="description" id="description"></textarea>
                            </div>
                            <div class="submit-section">
                                <button class="btn btn-primary submit-btn">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Add Today Work Modal -->
        
        <!-- Edit Today Work Modal -->
        <div id="edit_todaywork" class="modal custom-modal fade" role="dialog">
            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Edit Work Details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                    <form action="{{ route('form/timesheet/update') }}" method="POST">
                            @csrf
                            <input  type="hidden" name="id" id="e_id" value="">
                            <div class="row">
                                <div class="form-group col-sm-6">
                                    <label>Project <span class="text-danger">*</span></label>
                                    <select class="select" name="project_name" id="e_project_name">
                                        <option selected disabled> --Select --</option>
                                        @foreach ($project as $pro )
                                        <option value="{{ $pro->project_name }}">{{ $pro->project_name }}</option>
                                        @endforeach
                                    </select> 
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-sm-4">
                                    <label>Deadline <span class="text-danger">*</span></label>
                                    <div class="cal-icon">
                                        <input class="form-control" type="text" name="deadline" id="deadline_edit" readonly>
                                    </div>
                                </div>
                                <div class="form-group col-sm-4">
                                    <label>Total Hours <span class="text-danger">*</span></label>
                                    <input class="form-control" type="text"  name="total_hrs" id="total_hrs_edit" readonly>
                                </div>
                                <div class="form-group col-sm-4">
                                    <label>Remaining Hours <span class="text-danger" >*</span></label>
                                    <input class="form-control" type="text"  name="remaining_hrs" id="remaining_hrs_edit" >
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-sm-6">
                                    <label>Date <span class="text-danger">*</span></label>
                                    <div class="cal-icon">
                                        <input class="form-control datetimepicker" name="reg_date" id="reg_date_edit" type="text">
                                    </div>
                                </div>
                                <div class="form-group col-sm-6">
                                    <label>Hours <span class="text-danger">*</span></label>
                                    <input class="form-control" type="text"  name="assigned_hours" id="assigned_hours_edit">
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Description <span class="text-danger">*</span></label>
                                <textarea rows="4" class="form-control" name="description" id="description_edit">

                                </textarea>
                            </div>
                            <div class="submit-section">
                                <button class="btn btn-primary submit-btn">Save</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Edit Today Work Modal -->
        
        <!-- Delete Today Work Modal -->
        <div class="modal custom-modal fade" id="delete_workdetail" role="dialog">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="form-header">
                            <h3>Delete Work Details</h3>
                            <p>Are you sure want to delete?</p>
                        </div>
                        <div class="modal-btn delete-action">
                        <form action="{{ route('form/timesheet/delete') }}" method="POST">
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
        <!-- Delete Today Work Modal -->
        
    </div>
    <!-- /Page Wrapper -->

    @section('script')


    <script>

// toogle save leader id

$('#project_name').on('change',function()
{
  $('#timesheet_id').val($(this).find(':selected').data('timesheet_id'));

});

</script>


  <script>
        // select auto id
        $(document).on('click','.edit_todaywork',function()
        {
            var _this = $(this).parents('tr');

            $('#e_id').val(_this.find('.id').text());

            var project = (_this.find(".project").text());
            var _option = '<option selected value="' +project+ '">' + _this.find('.project').text() + '</option>'
            $( _option).appendTo("#e_project_name");
            $('#deadline_edit').val(_this.find('.deadline').text());
            $('#total_hrs_edit').val(_this.find('.total_hrs').text());
            $('#remaining_hrs_edit').val(_this.find('.remaining_hrs').text());
            $('#reg_date_edit').val(_this.find('.reg_date').text());
            $('#assigned_hours_edit').val(_this.find('.assigned_hours').text());
        });
    </script>


    {{-- delete model --}}
    <script>
        $(document).on('click','.delete_workdetail',function()
        {
            var _this = $(this).parents('tr');
            $('.e_id').val(_this.find('.id').text());
        });
    </script>
    @endsection
@endsection
