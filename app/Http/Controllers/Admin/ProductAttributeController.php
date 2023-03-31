<?php

namespace App\Http\Controllers\Admin;

use App\Models\Product_attribute;
use App\Http\Controllers\Controller;
use App\Http\Requests\StorePattributeRequest;
use App\Http\Requests\UpdatePattributeRequest;

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

    public function show($id)
    {
        return response()->json(Product_attribute::find($id), 201);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StorePattributeRequest  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(StorePattributeRequest $request)
    {
        $validated = $request->validated();

        if (empty($request->slug)) {
            $request->merge([
               'slug'=> str_ireplace(' ','-',$request->name) 
            ]);
        }
          
        $product_attribute = Product_attribute::create($request->all());
        $response = ['product_attribute' => $product_attribute,'status' => 201];
        return response()->json($response, 201);
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatePattributeRequest  $request
     * @param  \App\Models\Product_attribute  $product_attribute
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(UpdatePattributeRequest $request,$id)
    {
        
        if ($request->slug=="") {
            $request->merge([
                'slug'=> str_ireplace(' ','-',$request->name) 
            ]);
        }
        
        $product_attribute = Product_attribute::find($id);
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
    public function destroy($id)
    {
        Product_attribute::find($id)->delete();
        $response = ['product_attribute' => "", 'status' => 204];
        return response()->json($response, 204);
    }
}
