<?php
namespace App\Repositories;

use Illuminate\Support\Facades\DB;

class ProductRepository
{
	/**
	* Get list of product.
	*/
	public function getAllProducts(){
		$products =   \DB::table('products')
       ->leftjoin('categories', 'products.category_id', '=', 'categories.id')
       ->leftjoin('reviews', 'products.id', '=', 'reviews.product_id')
       ->select('products.*','categories.name as category'  , \DB::raw('round(AVG(reviews.star),0) as rating') )
       ->groupBy('products.id')
       ->get();
	   return $products;
	}
	
	/**
	* Get list of product.
	*/
	public function getPaginateProducts(){
		$products =   \DB::table('products')
       ->leftjoin('categories', 'products.category_id', '=', 'categories.id')
       ->leftjoin('reviews', 'products.id', '=', 'reviews.product_id')
       ->select('products.*','categories.name as category'  , \DB::raw('round(AVG(reviews.star),0) as rating') )
       ->groupBy('products.id')
       ->paginate(6);
	   return $products;
	}
	
	/**
	* Search of product.
	*/
	public function searchProducts($search){
		$products =   \DB::table('products')
       ->leftjoin('categories', 'products.category_id', '=', 'categories.id')
       ->leftjoin('reviews', 'products.id', '=', 'reviews.product_id')
       ->select('products.*','categories.name as category'  , \DB::raw('round(AVG(reviews.star),0) as rating') )
	   ->groupBy('products.id')
	   ->where('products.name','like','%'.$search.'%')
       ->paginate(6);
	   return $products;
	}
	
	
	/**
	* one of product.
	*/
	public function oneProduct($id){
		$product =   \DB::table('products')
		->leftjoin('categories', 'products.category_id', '=', 'categories.id')
		->leftjoin('brands', 'products.brand_id', '=', 'brands.id')
		->leftjoin('reviews', 'products.id', '=', 'reviews.product_id')
		->select('products.*','categories.name as category', \DB::raw('round(AVG(reviews.star),0) as rating') )
		->groupBy('products.id')
	   ->where('products.id',$id)
       ->first();
	   return $product;
	}
}

