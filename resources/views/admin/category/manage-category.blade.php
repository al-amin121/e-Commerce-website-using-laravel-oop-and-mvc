@extends('admin.master')
@section('body')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Manage Category</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0);">Category</a></li>
                <li class="breadcrumb-item active" aria-current="page">Manage Category</li>
            </ol>
        </div>
    </div>
    <!-- PAGE-HEADER END -->

    <!-- Row -->
    <div class="row">
        <div class="row row-sm">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header border-bottom">
                        <h3 class="card-title">Manage Category</h3>
                    </div>
                    <h4 class="text-center text-primary">{{ session('message') }}</h4>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="editable-responsive-table" class="table editable-table table-nowrap table-bordered table-edit wp-100">
                                <thead>
                                <tr>
                                    <th>SL</th>
                                    <th>Name</th>
                                    <th>Image</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($categories as $category)
                                    <tr>
                                        <td>{{$loop->iteration}}</td>
                                        <td>{{$category->name}}</td>
                                        <td>
                                            <img src="{{asset($category->image)}}" style="height: 50px; width: 50px" alt="">
                                        </td>
                                        <td>{{$category->status ==1 ? 'Active' : 'Inactive' }}</td>
                                        <td style="width: 200px" >
                                          <div class="d-flex justify-content-between">
                                              <div>
                                                  <a href="{{ route('category.edit',['id'=>$category->id]) }}" class="btn btn-primary btn-sm">Edit</a>

                                                  @if($category->status ==1)
                                                      <a href="{{ route('category.status',['id'=>$category->id]) }}" class="btn btn-success btn-sm">Inactive</a>

                                                  @else
                                                      <a href="{{ route('category.status',['id'=>$category->id]) }}" class="btn btn-warning btn-sm">Active</a>

                                                  @endif
                                              </div>
                                              <div>
                                                  <form action="{{ route('category.destroy') }}" method="post">
                                                      @csrf
                                                      <input type="hidden" name="id" value="{{ $category->id }}">
                                                      <button class="btn btn-danger btn-sm" onclick="return confirm('Are You Delete This!!')"> Delete</button>
                                                  </form>
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
        </div>
    </div>
    <!-- End Row -->
@endsection

