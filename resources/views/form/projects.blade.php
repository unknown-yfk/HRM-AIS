
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
                        <h3 class="page-title">Projects</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{route('home')}}">Dashboard</a></li>
                            <li class="breadcrumb-item active">Projects</li>
                        </ul>
                    </div>
                    <div class="col-auto float-right ml-auto">
                        <a href="#" class="btn add-btn" data-toggle="modal" data-target="#add_project"><i class="fa fa-plus"></i> Add Project</a>
                    </div>
                </div>
            </div>

            <!-- /Page Header -->
            {!! Toastr::message() !!}
            <div class="row">
                <div class="col-md-12">
                    <div>
                        <table class="table table-striped custom-table mb-0 datatable">
                            <thead>
                                <tr>
                                    <th style="width: 30px;">#</th>
                                    <th>Project Name</th>
                                    <th>Project Leader</th>
                                    <th>Description</th>
                                    <th>Deadline</th>
                                    <th>Status</th>
                                    <th class="text-right">Action</th>
                                </tr>
                            </thead>
                            <tbody>  
                            
                            @foreach ($users as $key=>$items )
                                <tr>

                                    <td>{{ ++$key }}</td>
                                    <td hidden class="id">{{ $items->id }}</td>
                                    <td hidden class="e_leader_id">{{ $items->user_id }}</td>
                                    <td  class="project_name">{{ $items->project_name }}</td>
                                    <td>
                                        <span hidden class="image">{{ $items->avatar}}</span>
                                    <h2 class="table-avatar">
                                        <a href="{{ url('employee/profile/'.$items->user_id) }}" class="avatar"><img src="{{ URL::to('/assets/images/'. $items->avatar) }}" alt="{{ $items->avatar }}"></a>
                                            <a  class="project_leader" href="#">{{ $items->project_leader }} </a>
                                        </h2>
                                    </td>
                                    <td class="description">
                                        <p>{{ $items->description }}</p>
                                    </td>
                                    <td class="deadline">{{ $items->deadline }}</td>
                                    <td class="text-center">
                                                <div class="dropdown action-label">
                                            @if ($items->status=='New')
                                                <a class="btn btn-white btn-sm btn-rounded dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="false">
                                                <i class="fa fa-dot-circle-o text-purple"></i>
                                                    <span class="statuss">{{ $items->status }}</span>
                                                </a>
                                                @elseif ($items->status=='Pending')
                                                <a class="btn btn-white btn-sm btn-rounded dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="false">
                                                    <i class="fa fa-dot-circle-o text-info"></i>
                                                    <span class="statuss">{{ $items->status }}</span>
                                                </a>
                                                @elseif ($items->status=='Completed')
                                                <a class="btn btn-white btn-sm btn-rounded dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="false">
                                                    <i class="fa fa-dot-circle-o text-success"></i>
                                                    <span class="statuss">{{ $items->status }}</span>
                                                </a>
                                                @elseif ($items->status=='Declined')
                                                <a class="btn btn-white btn-sm btn-rounded dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="false">
                                                    <i class="fa fa-dot-circle-o text-danger"></i>
                                                    <span class="statuss">{{ $items->status }}</span>
                                                </a>
                                                @elseif ($items->status=='')
                                                <a class="btn btn-white btn-sm btn-rounded dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="false">
                                                    <i class="fa fa-dot-circle-o text-dark"></i>
                                                    <span class="statuss">N/A</span>
                                                </a>
                                            @endif
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a class="dropdown-item" href="#"><i class="fa fa-dot-circle-o text-purple"></i> New</a>
                                                        <a class="dropdown-item" href="#"><i class="fa fa-dot-circle-o text-info"></i> Pending</a>
                                                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#approve_leave"><i class="fa fa-dot-circle-o text-success"></i> Completed</a>
                                                        <a class="dropdown-item" href="#"><i class="fa fa-dot-circle-o text-danger"></i> Declined</a>
                                                    </div>
                                        </div>
                                            </td>
                                    <td class="text-right">
                                    <div class="dropdown dropdown-action">
                                            <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="material-icons">more_vert</i></a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item  edit_projects" href="#" data-toggle="modal" data-target="#edit_projects"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                            <a class="dropdown-item delete_projects" href="#" data-toggle="modal" data-target="#delete_projects"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
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
        
        <!-- Add Projects Modal -->


        <div id="add_project" class="modal custom-modal fade" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Add Project</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="{{ route('form/projects/save') }}" method="POST">
                            @csrf
                          
                            <div class="form-group">
                                        <label class="col-form-label">Project Name <span class="text-danger">*</span></label>
                                      
                                        <input class="form-control @error('designation') is-invalid @enderror" type="text" id="project_name" name="project_name" placeholder="Project Name">
                                        @error('project_name')
                                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                    </div>

                            <div class="form-group">
                                <label>Project Leader <span class="text-danger">*</span></label>
                                <select class="select" id="project_leader" name="project_leader" @error('project_leader') is-invalid @enderror>
                                          <option selected disable> Select Leader</option>
                                               @foreach ($userList as $key=>$user )
                                                <option value="{{ $user->name }}" data-leader_id={{ $user->user_id }}>{{ $user->name }}</option>
                                                @endforeach
                                </select>   
                                
                            </div>
                            <input type="hidden" class="form-control" id="leader_id" name="leader_id" readonly>
                        
                            <div class="form-group">
                                <label>Deadline <span class="text-danger">*</span></label>
                                <div class="cal-icon">
                                    <input type="text" class="form-control datetimepicker" id="deadline" name="deadline">
                                </div>
                            </div>
                            <div class="form-group">
                            <label>Status <span class="text-danger">*</span></label>
                                     <select class="select" name="status" id="status">
                                        <option selected disabled> --Select --</option>
                                            <option value="Active">New</option>
                                            <option value="Pending">Pending</option>
                                            <option value="Completed">Completed</option>
                                            <option value="Declined">Declined</option>
                                    </select>
                                </div>
                            <div class="form-group">
                                <label>Description <span class="text-danger">*</span></label>
                                <textarea rows="4" class="form-control" id="description" name="description"></textarea>
                            </div>
                            <div class="submit-section">
                                <button type="submit" class="btn btn-primary submit-btn">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Add Projects Modal -->
        
        <!-- Edit Projects Modal -->
       
        <div id="edit_projects" class="modal custom-modal fade" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Edit Project</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                    <form action="{{ route('form/projects/update') }}" method="POST">
                            @csrf
                                <input  type="text" name="id" id="e_id" value="">
                            <div class="form-group">
                                        <label class="col-form-label">Project Name <span class="text-danger">*</span></label>
                                        <input class="form-control @error('project_name') is-invalid @enderror" type="text" id="project_name_edit" name="project_name" placeholder="Project Name">
                                    </div>
                            <div class="form-group">
                                <label>Project Leader <span class="text-danger">*</span></label>
                                <select class="select" id="e_project_leader" name="project_leader">
                                    <option selected disable> Select Leader</option>
                                    @foreach ($userList as $key=>$user )
                                            <option value="{{ $user->name }}" data-edit_leader_id={{ $user->user_id }} >{{ $user->name }}</option>
                                        @endforeach
                                </select>  
                            </div>
                            <input type="text" class="form-control" id="edit_leader_id" name="leader_id" readonly>
                            <input type="hidden" class="form-control" id="user_id" name="user_id" value="{{ Auth::user()->user_id }}">
                        
                            <div class="form-group">
                                <label>Deadline <span class="text-danger">*</span></label>
                                <div class="cal-icon">
                                    <input type="text" class="form-control datetimepicker" id="deadline_edit"  name="deadline">
                                </div>
                            </div>
                            <div class="form-group">
                            <label>Status <span class="text-danger">*</span></label>
                            <select class="select select2s-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true" id="status_edit" name="status">
                                    <option selected disabled> --Select --</option>
                                    <option value="Completed">New</option>
                                    <option value="Completed">Active</option>
                                    <option value="Completed">Pending</option>
                                    <option value="Completed">Completed</option>
                                </select>
                                </div>
                            <div class="form-group">
                                <label>Leave Reason <span class="text-danger">*</span></label>
                                <textarea rows="4" class="form-control" id="edit_description" name="description"></textarea>
                            </div>
                            <div class="submit-section">
                                <button type="submit" class="btn btn-primary submit-btn">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Edit Projects Modal -->

        <!-- Delete Projects Modal -->
        <div class="modal custom-modal fade" id="delete_projects" role="dialog">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="form-header">
                            <h3>Delete Project</h3>
                            <p>Are you sure want to delete?</p>
                        </div>
                        <div class="modal-btn delete-action">
                            <form action="{{ route('form/projects/delete') }}" method="POST">
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
        <!-- /Delete Projects Modal -->
    </div>

    <!-- /Page Wrapper -->
    @section('script')
  
      <script>

          // toogle save leader id

    $('#project_leader').on('change',function()
        {
            $('#leader_id').val($(this).find(':selected').data('leader_id'));
       
        });


        // toogle edit leader id

        $('#e_project_leader').on('change',function()
        {
            $('#edit_leader_id').val($(this).find(':selected').data('edit_leader_id'));
       
        });

    </script>

        {{-- update js --}}
        <script>
        // select auto id
        $(document).on('click','.edit_projects',function()
        {
            var _this = $(this).parents('tr');
            $('#edit_leader_id').val(_this.find('.e_leader_id').text());
            $('#e_id').val(_this.find('.id').text());
            $('#project_name_edit').val(_this.find('.project_name').text());

            var project_leader = (_this.find(".project_leader").text());
            var _option = '<option selected value="' +project_leader+ '">' + _this.find('.project_leader').text() + '</option>'
            $( _option).appendTo("#e_project_leader");

            $('#deadline_edit').val(_this.find('.deadline').text());

        });
    </script>

    {{-- delete model --}}
    <script>
        $(document).on('click','.delete_projects',function()
        {
            var _this = $(this).parents('tr');
            $('.e_id').val(_this.find('.id').text());
        });
    </script>




    @endsection
@endsection
