@extends('admin.master')
@section('body')
    <div class="main-container container-fluid">


        <!-- PAGE-HEADER -->
        <div class="page-header">
            <div>
                <h1 class="page-title">User</h1>
            </div>
            <div class="ms-auto pageheader-btn">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0);">User Forms</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Add User</li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="card">
                    <div class="card-header border-bottom">
                        <h3 class="card-title">Add User</h3>
                    </div>
                    <h4 class="text-center text-primary">{{ session('message') }}</h4>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-10 col-lg-8 col-xl-6 mx-auto d-block">

                                <form action="{{ route('user.store') }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="card card-body pd-20 pd-md-40 border shadow-none">

                                        <div class="form-group">
                                            <label class="form-label" >User Name</label>
                                            <input class="form-control" name="name"  type="text" placeholder="Enter Name" required>
                                        </div>
                                        <div class="form-group">
                                            <label class="form-label" >Email</label>
                                            <input class="form-control" name="email"  type="email" placeholder="Enter Email" required>
                                        </div>
                                        <div class="form-group">
                                            <label class="form-label" >Password</label>
                                            <input class="form-control" name="password"  type="password" placeholder="Enter Password" required>
                                        </div>

                                        <button class="btn btn-primary btn-block  ">Add User</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div>
@endsection
