<?php

namespace App\Http\Controllers;

use App\Models\Product_attribute_item_item;
use Illuminate\Http\Request;

class ProductAttributesItemController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return \Illuminate\Http\JsonResponse
     */
    public function index()
    {
        return response()->json(Product_attribute_item::all(), 200);
    }

    
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request)
    {
        $product_attribute_item = Product_attribute_item::create($request->all());
        $response = ['product_attribute_item' => $product_attribute_item,'status' => 201];
        return response()->json($response, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product_attribute_item  $product_attribute_item
     * @return \Illuminate\Http\JsonResponse
     */
    public function show(Product_attribute_item $product_attribute_item)
    {
        return response()->json($product_attribute_item, 201);

    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product_attribute_item  $product_attribute_item
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(Request $request, Product_attribute_item $product_attribute_item)
    {
        $product_attribute_item->update($request->all());
        $response = ['product_attribute_item' => $product_attribute_item, 'status' => 200];
        return response()->json($response, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product_attribute_item  $product_attribute_item
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(Product_attribute_item $product_attribute_item)
    {
        $product_attribute_item->delete();
        $response = ['product_attribute_item' => "", 'status' => 204];
        return response()->json($response, 204);
    }
}
