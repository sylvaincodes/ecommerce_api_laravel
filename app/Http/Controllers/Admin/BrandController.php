<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Repositories\BrandRepository;
use App\Http\Requests\StoreBrandRequest;
use App\Http\Requests\UpdateBrandRequest;

use App\Models\Brand;

class BrandController extends Controller
{
   
    public $BrandRepository;

    /**
     * Create a new construct instance.
     *
     * @param  \App\Repositories\BrandRepository  $BrandRepository
     * @return void
     */
    public function __construct(BrandRepository $BrandRepository){
        $this->BrandRepository =  $BrandRepository;
    }


    public function index()
    {
        // $brands = $this->BrandRepository->getAllBrands();
        // $response = ['data' => $brands, 'last_page' => "" , "current_page" => 1 , 'status' => 200 , "error"=>"" ];
        return response()->json([ "data" => Brand::all(), "status" => 200 ]);
    }
    
    public function show($id)
    {
        return response()->json(Brand::find($id), 201);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreBrandRequest  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(StoreBrandRequest $request)
    {
        $validated = $request->validated();
        
        $request->merge([
                'image'=> ""
        ]);
      
        
        $brand = Brand::create($request->all());
        $response = ['brand' => $brand,'status' => 201];
        return response()->json($response, 201);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\UpdateBrandRequest  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(UpdateBrandRequest $request, $id)
    {

        $validated = $request->validated();
        
        if($request->image){
            $request->merge([
                'image'=> ""
            ]);
        } 
            
        $brand = Brand::find($id);
        $brand->update($request->all());
        $response = ['brand' => $brand, 'status' => 200];
        return response()->json($response, 200);
    }

    public function destroy(Request $request, $id)
    {
        $brand = Brand::find($id);
        $brand->delete();
        $response = ['brand' => "", 'status' => 204];
        return response()->json($response, 204);
    }
}
