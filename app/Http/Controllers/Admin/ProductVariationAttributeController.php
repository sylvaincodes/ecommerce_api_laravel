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
        $id=$_GET['id'];
        $data =   \DB::table('product_variation_attributes')
        ->join('product_attribute_items', 'product_variation_attributes.product_attribute_item_id', '=', 'product_attribute_items.id')
        ->leftjoin('product_attributes', 'product_attribute_items.product_attribute_id', '=', 'product_attributes.id')
        ->select('product_variation_attributes.id', 'product_attribute_items.value as valeur','product_attributes.name as attribut')
        ->where('product_variation_attributes.product_variation_id',$id)
        ->get();

        return response()->json($data, 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StorePvariationattributeRequest  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(StorePvariationattributeRequest $request)
    {
        $id=$_GET['id'];

        $check =   \DB::table('product_variation_attributes')
        ->select('*')
        ->where('product_variation_id', $request->product_variation_id)
        ->where('product_attribute_item_id', $request->product_attribute_item_id)
        ->first();

        if ($check) {
            # code...
            $response = ['message' => "Cette variation existe déja",'status' => 500];
        }else{
            $pvariationattribute = Product_variation_attribute::create($request->all());

            $row =   \DB::table('product_variation_attributes')
                ->join('product_attribute_items', 'product_variation_attributes.product_attribute_item_id', '=', 'product_attribute_items.id')
                ->leftjoin('product_attributes', 'product_attribute_items.product_attribute_id', '=', 'product_attributes.id')
                ->select('product_variation_attributes.id','product_attribute_items.value as valeur','product_attributes.name as attribut')
                ->where('product_variation_attributes.product_variation_id',$id)
                ->where('product_variation_attributes.id',$pvariationattribute->id)
                ->first();

            $response = ['pvariationattribute' => $row,'status' => 201];
        }

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
