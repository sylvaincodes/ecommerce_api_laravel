<?php

namespace App\Http\Controllers;

use App\Models\Product_attribute;
use Illuminate\Http\Request;

class ProductAttributeController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return \Illuminate\Http\JsonResponse
     */
    public function index()
    {
        return response()->json(Product_attribute::all(), 200);
    }

    
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request)
    {
        $product_attribute = Product_attribute::create($request->all());
        $response = ['product_attribute' => $product_attribute,'status' => 201];
        return response()->json($response, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product_attribute  $product_attribute
     * @return \Illuminate\Http\JsonResponse
     */
    public function show(Product_attribute $product_attribute)
    {
        return response()->json($product_attribute, 201);

    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product_attribute  $product_attribute
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(Request $request, Product_attribute $product_attribute)
    {
        $product_attribute->update($request->all());
        $response = ['product_attribute' => $product_attribute, 'status' => 200];
        return response()->json($response, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product_attribute  $product_attribute
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(Product_attribute $product_attribute)
    {
        $product_attribute->delete();
        $response = ['product_attribute' => "", 'status' => 204];
        return response()->json($response, 204);
    }
}
