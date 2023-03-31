<?php

namespace App\Http\Controllers\Admin;

use App\Models\Product_attribute_item;
use App\Http\Controllers\Controller;
use App\Http\Requests\StorePattributeitemRequest;
use App\Http\Requests\UpdatePattributeitemRequest;

class ProductAttributeItemController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return \Illuminate\Http\JsonResponse
     */
    public function index()
    {
        return response()->json(Product_attribute_item::all(), 200);
    }


    public function show($id)
    {
        return response()->json(Product_attribute_item::find($id), 201);
    }
    
    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StorePattributeitemRequest  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(StorePattributeitemRequest $request)
    {
        $validated = $request->validated();

        if (empty($request->slug)) {
            $request->merge([
               'slug'=> str_ireplace(' ','-',$request->name) 
            ]);
        }
          
        $product_attribute_item = Product_attribute_item::create($request->all());
        $response = ['product_attribute_item' => $product_attribute_item,'status' => 201];
        return response()->json($response, 201);
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatePattributeitemRequest  $request
     * @param  \App\Models\Product_attribute_item  $product_attribute_item
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(UpdatePattributeitemRequest $request,$id)
    {
        
        if ($request->slug=="") {
            $request->merge([
                'slug'=> str_ireplace(' ','-',$request->name) 
            ]);
        }
        
        $product_attribute_item = Product_attribute_item::find($id);
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
    public function destroy($id)
    {
        Product_attribute_item::find($id)->delete();
        $response = ['product_attribute_item' => "", 'status' => 204];
        return response()->json($response, 204);
    }
}
