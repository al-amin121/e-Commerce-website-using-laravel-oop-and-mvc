<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
private static $product, $image, $ImageNewName, $directory, $imgUrl;
    public static function saveProduct($request)
    {
      self::$product = new Product();
      self::$product->name = $request->name;
      self::$product->category_id = $request->category_id;
      self::$product->price = $request->price;
      self::$product->description = $request->description;
      self::$product->image = self::saveImage($request);
      self::$product->save();
    }

    private static function saveImage($request)
    {
        self::$image = $request->file('image');
        self::$ImageNewName = rand().'.'.self::$image->extension();
        self::$directory= 'admin-assets/product-image/';
        self::$imgUrl= self::$directory.self::$ImageNewName;
        self::$image->move(self::$directory,self::$ImageNewName);
        return self::$imgUrl;

    }

    public function categories(){
        return $this->belongsTo(Category::class, 'category_id');
    }

    public static function updateProduct($request)
    {
       self::$product = Product::find($request->id);
        self::$product->name = $request->name;
        self::$product->category_id = $request->category_id;
        self::$product->price = $request->price;
        self::$product->description = $request->description;
        if ($request->file('image')){
            if (file_exists( self::$product->image )){
                unlink( self::$product->image );
                self::$product->image = self::saveImage($request);

            }
        }
        self::$product->save();
    }


}
