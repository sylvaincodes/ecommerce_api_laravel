<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;

use App\Models\SlidesItem;
use Illuminate\Http\Request;
use App\Http\Requests\StoreSlideItemRequest;
use App\Http\Requests\UpdateSlideItemRequest;
use App\Repositories\SlidesItemRepository;

class SlidesItemController extends Controller
{


    
    public $SlidesItemRepository;

    /**
     * Create a new construct instance.
     *
     * @param  \App\Repositories\SlidesItemRepository  $SlidesItemRepository
     * @return void
     */
    public function __construct(SlidesItemRepository $SlidesItemRepository){
        $this->SlidesItemRepository =  $SlidesItemRepository;
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function index()
    {
        $slidesitems = $this->SlidesItemRepository->getAllSlidesitems();
        return response()->json($slidesitems, 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreSlideItemRequest  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(StoreSlideItemRequest $request)
    {

        $request->merge([
            'title'=> str_replace(' ','_',$request->title)
         ]);
         
         
         $request->merge([
            'btn'=> str_replace(' ','_',$request->btn)
         ]);
         
         $request->merge([
            'subtitle'=> str_replace(' ','_',$request->subtitle)
         ]); 
         
         $request->merge([
            'description'=> str_replace(' ','_',$request->description)
         ]);

        if (isset($request->image)) {
             
            $img_name= $request->title.'.jpg';
             $request->merge([
                'image'=> $img_name
             ]);
        }
            
        $slidesitem = SlidesItem::create($request->all());
        $response = ['slidesitem' => $slidesitem,'status' => 201];
        return response()->json($response, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\SlidesItem  $slidesitem
     * @return \Illuminate\Http\JsonResponse
     */
    public function show(SlidesItem $slidesitem)
    {
        return response()->json($slidesitem, 201);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateSlideItemRequest  $request
     * @param  \App\Models\SlidesItem  $slidesitem
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(UpdateSlideItemRequest $request, SlidesItem $slidesitem)
    {


        $request->merge([
            'title'=> str_replace(' ','_',$request->title)
         ]);
         
         $request->merge([
            'subtitle'=> str_replace(' ','_',$request->subtitle)
         ]); 
         
         $request->merge([
            'description'=> str_replace(' ','_',$request->description)
         ]);

         $request->merge([
            'btn'=> str_replace(' ','_',$request->btn)
         ]);

        if (isset($request->image)) {
             
            $img_name= $request->title.'.jpg';
             $request->merge([
                'image'=> $img_name
             ]);
        }
        
        $slidesitem->update($request->all());
        $slidesitem_ = $this->SlidesItemRepository->getSlidesItem($slidesitem->id);
        $response = ['slidesitem' => $slidesitem_, 'status' => 200];
        return response()->json($response, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\SlidesItem  $slidesitem
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(SlidesItem $slidesitem)
    {
        $slidesitem->delete();
        $response = ['slidesitem' => "", 'status' => 204];
        return response()->json($response, 204);
    }
}
