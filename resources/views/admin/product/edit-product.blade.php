@extends('admin.master')
@section('body')
    <div class="main-container container-fluid mb-5 pb-5">


        <!-- PAGE-HEADER -->
        <div class="page-header">
            <div>
                <h1 class="page-title">Product</h1>
            </div>
            <div class="ms-auto pageheader-btn">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0);">Product Forms</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Add Product</li>
                </ol>
            </div>
        </div>
        <h4 class="text-center text-primary">{{ session('message') }}</h4>
        <div class="card-body">
            <div class="row">
                <div class="col-md-10 col-lg-10 col-xl-10 mx-auto d-block">

                    <form action="{{ route('product.update') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="id" value="{{ $product->id }}">
                        <div class="card card-body pd-20 pd-md-40 border shadow-none">

                            <div class="form-group">
                                <label class="form-label" for="productName">Product Name</label>
                                <input class="form-control" value="{{$product->name}}" name="name" id="productName" type="text" placeholder="Enter Product Name" required>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="categoryName">Category Name</label>
                                <select name="category_id" id="" class="form-control form-select" aria-label="Default select example">
                                    <option selected>Select A Category</option>
                                    @foreach($categories as $category)
                                        <option value="{{$category->id}}"{{ $product->category_id == $category->id ? 'selected' : '' }}>{{$category->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="productPrice">Product Price</label>
                                <input class="form-control" value="{{$product->price}}" name="price" id="productPrice" type="number" placeholder="Enter Product Price" required>
                            </div>
                            <div class="form-group">
                                <label class="form-label" >Product Description</label>
                                <textarea rows="5" class="form-control"  name="description" placeholder="Enter Product Description" required>{{$product->description}}</textarea>
                            </div>
                            <div class="form-group mb-5">
                                <label class="form-label" >Product Image</label>
                                <input class="form-control" name="image"  type="file">
                                <img src="{{asset($product->image)}}" width="100" height="90" alt="">
                            </div>
                            <button class="btn btn-primary btn-block  ">Update Product</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div>
@endsection
