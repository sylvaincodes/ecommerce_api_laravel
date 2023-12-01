<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Repositories\OrderRepository;
use App\Http\Requests\StoreOrderRequest;
use App\Http\Requests\UpdateOrderRequest;

use App\Models\Order;
use App\Models\Ordersitems;

class OrderController extends Controller
{
   
    public $OrderRepository;

    /**
     * Create a new construct instance.
     *
     * @param  \App\Repositories\OrderRepository  $OrderRepository
     * @return void
     */
    public function __construct(OrderRepository $OrderRepository){
        $this->OrderRepository =  $OrderRepository;
    }


    public function index()
    {
        $orders = $this->OrderRepository->getAllOrdersGroup();
        
        return response()->json([ "status" => "success","data" => $orders],200);
    }
    
    public function show($id)
    {
        $response = [ "status" => "success","data" => Order::find($id)];
        return response()->json($response, 200);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreOrderRequest  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(StoreOrderRequest $request)
    {
        $validated = $request->validated();

        $id = $request->cart_id;
        $request->merge(['id' => $id]);

        $collection = Order::create($request->all());
        
        foreach ($request->only('products') as $key => $value) {
            foreach ($value as $key => $product) {
                    Ordersitems::create([    
                          'order_id' =>  $id,
                          'product_id' =>  $product['id'],
                          'quantity' =>  $product['qtySelected'],
                          'price' =>  $product['priceSelected'],            
                          'size' =>  $product['sizeSelected'],            
                          'total' =>  $product['priceSelected']*$product['qtySelected'],            
                        ]);
                    }
                }

                
                $response = ['status' => "success", 'data' => $collection];
                return response()->json($response, 201);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\UpdateOrderRequest  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(UpdateOrderRequest $request, $id)
    {
        $validated = $request->validated();

        $order = \DB::table('orders')
        ->where('id', $id)
        ->update($request->only(['status','payment_status','amount_subtotal','amount_total','amount_discount','amount_shipping','amount_tax']));
        $response = ['message' => "order updated", 'status' => 'success' , 'request' => $order];
        return response()->json($response, 201);
    }

    public function destroy(Request $request, $id)
    {
        $order = Collection::find($id);
        $order->delete();
        return response()->json(204);
    }
}
