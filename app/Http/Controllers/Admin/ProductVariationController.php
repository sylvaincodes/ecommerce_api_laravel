<?php

namespace App\Http\Controllers\Admin;

use App\Models\Product_variation;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\StorePvariationRequest;
use App\Http\Requests\UpdatePvariationRequest;

class ProductVariationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function index()
    {
        return response()->json(Product_variation::all(), 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StorePvariationRequest  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(StorePvariationRequest $request)
    {
        $pvariation = Product_variation::create($request->all());
        $response = ['pvariation' => $pvariation,'status' => 201];
        return response()->json($response, 201);
    }

       /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product_variation  $pvariation
     * @return \Illuminate\Http\JsonResponse
     */
    public function show(Product_variation $pvariation)
    {
        return response()->json($pvariation, 201);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatePvariationRequest  $request
     * @param  \App\Models\Product_variation  $pvariation
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(UpdatePvariationRequest $request, Product_variation $pvariation)
    {
        $pvariation->update($request->all());
        $response = ['pvariation' => $pvariation, 'status' => 200];
        return response()->json($response, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product_variation  $pvariation
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(Product_variation $pvariation)
    {
        $pvariation->delete();
        $response = ['pvariation' => "", 'status' => 204];
        return response()->json($response, 204);
    }
}
