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
       ->get();
	   return $brands;
	}
}

