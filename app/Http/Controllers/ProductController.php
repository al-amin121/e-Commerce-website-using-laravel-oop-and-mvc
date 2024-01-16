<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;
use function Livewire\get;
use function SebastianBergmann\Type\returnType;

class ProductController extends Controller
{
    private static $product;

    public function addProduct(){
        return view('admin.product.add-product',[
            'categories'=>Category::where('status',1)->get()
        ]);
    }
    public function saveProduct(Request $request){
        Product::saveProduct($request);
        return back()->with('message','Add Product Successfully !');

    }
    public function manageProduct(){
        return view('admin.product.manage-product',[
            'products'=>Product::all()
        ]);
    }
    public function editProduct($id){
        return view('admin.product.edit-product',[
            'product'=>Product::find($id),
            'categories'=>Category::where('status',1)->get()
        ]);
    }
    public function updateProduct(Request $request){
        Product::updateProduct($request);
        return back()->with('message','Add update Successfully !');
    }

    public function destroyProduct(Request $request){
        self::$product = Product::find($request->id);
        if (file_exists(self::$product->image)){
            unlink(self::$product->image);
        }
        self::$product->delete();

        return back()->with('message','Product is Delete successfully..!');
    }

    public function statusProduct($id){
        self::$product = Product::find($id);
        if (self::$product->status ==1){
            self::$product->status =0;
        }else{
            self::$product->status =1;
        }
        self::$product->save();
        return back()->with('message','Update Successfully !');

    }
}
