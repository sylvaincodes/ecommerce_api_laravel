<?php
namespace App\Repositories;

use Illuminate\Support\Facades\DB;

class SlidesItemRepository
{
	/**
	* Get list of product.
	*/
	public function getAllSlidesitems(){
	    $slidesitems =   \DB::table('slides_items')
       ->join('slides', 'slides_items.slide_id', '=', 'slides.id')
       ->select('slides_items.*','slides.name as slide_name','slides.key as key')
       ->get();
	   return $slidesitems;
	}
	
	/**
	* Search of product.
	*/
	public function getSlidesItem($id){
		$slidesitem =   \DB::table('slides_items')
		->join('slides', 'slides_items.slide_id', '=', 'slides.id')
		->select('slides_items.*','slides.name as slide_name')
	   ->where('slides_items.id',$id)
       ->first();
	   return $slidesitem;
	}
}

