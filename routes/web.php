<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\WebsiteController;
use Illuminate\Support\Facades\Route;


/* for fontend */

Route::get('/',[WebsiteController::class,'index'])->name('home');
Route::get('/product/details/{id}',[WebsiteController::class,'productDetails'])->name('product.details');
Route::get('/product/category/{catId}',[WebsiteController::class,'productCategory'])->name('product.category');

Route::get('/cart',[WebsiteController::class,'cart'])->name('cart');
Route::get('/checkout',[WebsiteController::class,'checkout'])->name('checkout');
Route::get('/contact',[WebsiteController::class,'contact'])->name('contact');



/* for login */
Route::middleware(['auth:sanctum', config('jetstream.auth_session'), 'verified',])->group(function () {

    /* for admin-panel */
    Route::get('/admin',[DashboardController::class,'index'])->name('dashboard');

    Route::get('/category/add',[CategoryController::class,'addCategory'])->name('category.add');
    Route::post('/category/store',[CategoryController::class,'saveCategory'])->name('category.store');

    Route::get('/category/manage',[CategoryController::class,'manageCategory'])->name('category.manage');
    Route::get('/category/status/{id}',[CategoryController::class,'statusCategory'])->name('category.status');
    Route::get('/category/edit/{id}',[CategoryController::class,'editCategory'])->name('category.edit');

    Route::post('/category/update',[CategoryController::class,'updateCategory'])->name('category.update');
    Route::post('/category/delete',[CategoryController::class,'destroyCategory'])->name('category.destroy');

    Route::get('/product/add',[ProductController::class,'addProduct'])->name('product.add');
    Route::post('/product/store',[ProductController::class,'saveProduct'])->name('product.store');
    Route::get('/product/manage',[ProductController::class,'manageProduct'])->name('product.manage');

    Route::get('/product/edit/{id}',[ProductController::class,'editProduct'])->name('product.edit');
    Route::post('/product/update',[ProductController::class,'updateProduct'])->name('product.update');

    Route::get('/product/status/{id}',[ProductController::class,'statusProduct'])->name('product.status');

    Route::post('/product/delete',[ProductController::class,'destroyProduct'])->name('product.destroy');

    Route::get('/user/add',[UserController::class,'addUser'])->name('user.add');
    Route::post('/user/store',[UserController::class,'saveUser'])->name('user.store');

    Route::get('/user/manage',[UserController::class,'manageUser'])->name('user.manage');
    Route::get('/user/edit/{id}',[UserController::class,'editUser'])->name('user.edit');
    Route::post('/user/update',[UserController::class,'updateUser'])->name('user.update');
    Route::post('/user/destroy',[UserController::class,'deleteUser'])->name('user.destroy');

});


