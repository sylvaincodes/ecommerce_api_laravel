<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Repositories\CollectionRepository;
use App\Http\Requests\StoreCollectionRequest;
use App\Http\Requests\UpdateCollectionRequest;

use App\Models\Collection;

class CollectionController extends Controller
{
   
    public $CollectionRepository;

    /**
     * Create a new construct instance.
     *
     * @param  \App\Repositories\CollectionRepository  $CollectionRepository
     * @return void
     */
    public function __construct(CollectionRepository $CollectionRepository){
        $this->CollectionRepository =  $CollectionRepository;
    }


    public function index()
    {
        $collections = $this->CollectionRepository->getAllCollections();
        // $response = ['data' => $collections, 'last_page' => "" , "current_page" => 1 , 'status' => 200 , "error"=>"" ];
        return response()->json([ "data" => $collections,  "status" => 200]);
    }
    
    public function show($id)
    {
        return response()->json(Collection::find($id), 201);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreCollectionRequest  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(StoreCollectionRequest $request)
    {
        $validated = $request->validated();
        
        if (empty($request->slug)) {
             $request->merge([
                'slug'=> str_ireplace(' ','-',$request->name) 
             ]);
        }
           

        if($request->image){
            $request->merge([
                'image'=> ""
            ]);
        } 
        
        if($request->url){
            $request->merge([
                'url'=> $request->url   
            ]);
        }
         
        $collection = Collection::create($request->all());
        $response = ['collection' => $collection,'status' => 201];
        return response()->json($response, 201);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\UpdateCollectionRequest  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(UpdateCollectionRequest $request, $id)
    {

        $validated = $request->validated();
        
        if($request->image){
            $request->merge([
                'image'=> ""
            ]);
        } 
        
        if($request->url){
            $request->merge([
                'url'=> $request->url   
            ]);
        }
            
            
        $collection = Collection::find($id);
        $collection->update($request->all());
        $response = ['collection' => $collection, 'status' => 200];
        return response()->json($response, 200);
    }

    public function destroy(Request $request, $id)
    {
        $collection = Collection::find($id);
        $collection->delete();
        $response = ['collection' => "", 'status' => 204];
        return response()->json($response, 204);
    }
}
