<?php

namespace App\Http\Controllers\Admin;

use App\Models\Product_variation_attribute;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\StorePvariationattributeRequest;
use App\Http\Requests\UpdatePvariationattributeRequest;

class ProductVariationAttributeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function index()
    {
        return response()->json(Product_variation_attribute::all(), 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StorePvariationattributeRequest  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(StorePvariationattributeRequest $request)
    {
        $pvariationattribute = Product_variation_attribute::create($request->all());
        $response = ['pvariationattribute' => $pvariationattribute,'status' => 201];
        return response()->json($response, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product_variation_attribute  $pvariationattribute
     * @return \Illuminate\Http\JsonResponse
     */
    public function show(Product_variation_attribute $pvariationattribute)
    {
        return response()->json($pvariationattribute, 201);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatePvariationattributeRequest  $request
     * @param  \App\Models\Product_variation_attribute  $pvariationattribute
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(UpdatePvariationattributeRequest $request, Product_variation_attribute $pvariationattribute)
    {
        $pvariationattribute->update($request->all());
        $response = ['pvariationattribute' => $pvariationattribute, 'status' => 200];
        return response()->json($response, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product_variation_attribute  $pvariationattribute
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(Product_variation_attribute $pvariationattribute)
    {
        $pvariationattribute->delete();
        $response = ['pvariationattribute' => "", 'status' => 204];
        return response()->json($response, 204);
    }
}
