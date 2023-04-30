<?php
namespace App\Repositories;

use Illuminate\Support\Facades\DB;

class BrandRepository
{
	/**
	* Get list of brands.
	*/
	public function getAllBrands(){
		$brands =   \DB::table('brands')
       ->select('brands.*')
	   ->where('brands.status',"published")
       ->get();
	   return $brands;
	}
}

