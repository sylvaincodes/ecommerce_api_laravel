<?php
namespace App\Repositories;

use Illuminate\Support\Facades\DB;

class CollectionRepository
{
	/**
	* Get list of collections.
	*/
	public function getAllCollections(){
		$collections =   \DB::table('collections')
       ->select('collections.*')
	   ->where('collections.status',"published")
       ->get();
	   return $collections;
	}
}

