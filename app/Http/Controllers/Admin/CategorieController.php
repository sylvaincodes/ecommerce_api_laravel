<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Categorie;
use App\Repositories\CategorieRepository;
use App\Http\Requests\StoreCategorieRequest;
use App\Http\Requests\UpdateCategorieRequest;

class CategorieController extends Controller
{

    public $CategorieRepository;

    /**
     * Create a new construct instance.
     *
     * @param  \App\Repositories\CategorieRepository  $CategorieRepository
     * @return void
     */
    public function __construct(CategorieRepository $CategorieRepository){
        $this->CategorieRepository =  $CategorieRepository;
    }


    public function index()
    {
        // $categories = $this->CategorieRepository->getAllCategories();
        // $response = ['data' => $categories, 'last_page' => "" , "current_page" => 1 , 'status' => 200 , "error"=>"" ];
        
        $response = ['data' => Categorie::all(), 'status' => 201];
        return response()->json($response, 200);
    }
    
    public function show($id)
    {
        return response()->json(Categorie::find($id), 201);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreCategorieRequest  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(StoreCategorieRequest $request)
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
                    
        $category = Categorie::create($request->all());
        $response = ['category' => $category,'status' => 201];
        return response()->json($response, 201);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\UpdateCategorieRequest  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(UpdateCategorieRequest $request, $id)
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
            
        $category = Categorie::find($id);
        $category->update($request->all());
        $response = ['category' => $category, 'status' => 200];
        return response()->json($response, 200);
    }

    public function destroy(Request $request, $id)
    {
        $categorie = Categorie::find($id);
        $categorie->delete();
        $response = ['categorie' => "", 'status' => 204];
        return response()->json($response, 204);
    }
}
