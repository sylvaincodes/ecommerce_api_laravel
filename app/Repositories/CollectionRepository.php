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
       ->select('collecctions.*')
       ->get();
	   return $collections;
	}
}
