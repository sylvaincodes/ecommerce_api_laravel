<?php

namespace App\Http\Controllers\Admin;

use App\Models\Slide;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\StoreSlideRequest;
use App\Http\Requests\UpdateSlideRequest;

class SlideController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function index()
    {
        return response()->json(Slide::all(), 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreSlideRequest  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(StoreSlideRequest $request)
    {
        $slide = Slide::create($request->all());
        $response = ['slide' => $slide,'status' => 201];
        return response()->json($response, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Slide  $slide
     * @return \Illuminate\Http\JsonResponse
     */
    public function show(Slide $slide)
    {
        return response()->json($slide, 201);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateSlideRequest  $request
     * @param  \App\Models\Slide  $slide
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(UpdateSlideRequest $request, Slide $slide)
    {
        $slide->update($request->all());
        $response = ['slide' => $slide, 'status' => 200];
        return response()->json($response, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Slide  $slide
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(Slide $slide)
    {
        $slide->delete();
        $response = ['slide' => "", 'status' => 204];
        return response()->json($response, 204);
    }
}
