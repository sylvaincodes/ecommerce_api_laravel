<?php
namespace App\Repositories;

use Illuminate\Support\Facades\DB;

class CategorieRepository
{
	/**
	* Get list of categories.
	*/
	public function getAllCategories(){
		$categories =   \DB::table('categories')
		//->leftjoin('categories', 'categories.parent_id', '=', 'categories.id')
       ->select('categories.*')
       ->get();
	   return $categories;
	}
}

