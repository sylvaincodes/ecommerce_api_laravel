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
	   ->where('products.status',"published")
       ->groupBy('products.id')
       ->get();
	   return $products;
	}
	
	
	/**
	* Get list of product variations.
	*/
	public function getAllProductsVariations(){
		$products =   \DB::table('product_variations')
		->join('products', 'product_variations.product_id', '=', 'products.id')
		->join('categories', 'products.category_id', '=', 'categories.id')
		->join('collections', 'products.collection_id', '=', 'collections.id')
		->join('brands', 'products.brand_id', '=', 'brands.id')
		->join('product_variation_attributes', 'product_variations.id', '=', 'product_variation_attributes.product_variation_id')
		->join('product_attribute_items', 'product_variation_attributes.product_attribute_item_id', '=', 'product_attribute_items.id')
		->join('product_attributes', 'product_attribute_items.product_attribute_id', '=', 'product_attributes.id')
       ->select('collections.name as collection','brands.name as brand','categories.name as category','products.name','products.description','products.content','products.content','product_variations.*', 'product_variation_attributes.product_attribute_item_id','product_attribute_items.product_attribute_id','product_attribute_items.value as valeur','product_attributes.slug as attribut')
	   ->where('products.status',"published")
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
	   ->where('products.status',"published")
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
	   ->where('products.status',"published")
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
		->where('products.status',"published")
		->groupBy('products.id')
	   ->where('products.id',$id)
       ->first();
	   return $product;
	}
}

