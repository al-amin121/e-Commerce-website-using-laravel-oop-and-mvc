@extends('admin.master')
@section('body')
    <div class="main-container container-fluid">


        <!-- PAGE-HEADER -->
        <div class="page-header">
            <div>
                <h1 class="page-title">Category</h1>
            </div>
            <div class="ms-auto pageheader-btn">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0);">Category Forms</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Add Category</li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="card">
                    <div class="card-header border-bottom">
                        <h3 class="card-title">Add Category</h3>
                    </div>
                    <h4 class="text-center text-primary">{{ session('message') }}</h4>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-10 col-lg-8 col-xl-6 mx-auto d-block">

                                <form action="{{ route('category.store') }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                     <div class="card card-body pd-20 pd-md-40 border shadow-none">

                                        <div class="form-group">
                                            <label class="form-label" for="categoryName">Category Name</label>
                                            <input class="form-control" name="name" id="categoryName" type="text" placeholder="Enter Category Name" required>
                                        </div>

                                        <div class="form-group mb-5">
                                            <label class="form-label" for="categoryImage">Category Image</label>
                                            <input class="form-control" name="image" id="categoryImage" type="file" required>
                                        </div>
                                        <button class="btn btn-primary btn-block  ">Add Category</button>
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
