<?php
namespace App\Repositories;

use Illuminate\Support\Facades\DB;
use App\Models\Order;
use App\Models\OrdersItems;

class OrderRepository
{
	/**
	* Get list of orders.
	*/
	public function getAllOrders(){
		$orders =   \DB::table('orders')
		->join('orders_items', 'orders.id', '=', 'orders_items.order_id')
       ->select('orders.*','orders_items.*')
       	// ->groupBy('orders.id')
       ->get();

	   return $orders;
	}

/**
	* Get list of orders.
	*/
	public function getAllOrdersGroup(){
		$orders = Order::all();	
		
		$array=[];
		foreach ($orders as $key => $order) {
		$id = $order->getAttributes()['id'];
		
		$items = \DB::table('orders_items')
		->leftjoin('products', 'orders_items.product_id', '=', 'products.id')
		// ->join('orders', 'orders_items.order_id', '=', 'orders.id')
		->where('orders_items.order_id',$id)
		->select('orders_items.*','products.name',"products.url")
		->get();

	 	$order_data = $order->getAttributes();
	 	$order_data['ordersitems'] = $items ; 	
	 	array_push($array, $order_data);
	}
	return $array;
	}
}



