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
       ->select('orders.*','orders_items.quantity','orders_items.price','orders_items.total','orders_items.status', 'orders_items.product_id')
       	->join('orders_items', 'orders.id', '=', 'orders_items.order_id')
       	// ->join('products', 'orders_items.product_id', '=', 'products.id')
       	->groupBy('orders.id')
       ->get();
	   return $orders;
	}


	/**
	* Get list of orders.
	*/
	public function getAllOrdersGroup(){
		$orders = Order::query()
		->with('ordersitems')
	 ->get();	

	$array=[];

	 foreach ($orders as $key => $order) {
	 	$order_data = $order->getAttributes();
	 	$ordersitems_data = $order->getRelations()['ordersitems'];
	 	$order_data['ordersitems'] = $ordersitems_data ; 	
	 	array_push($array, $order_data);
	 }
	 	
	   return $array;
	}
}

