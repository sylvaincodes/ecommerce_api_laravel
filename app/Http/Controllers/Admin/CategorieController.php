<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Categorie;

class CategorieController extends Controller
{
    public function index()
    {
        return response()->json(Categorie::all(), 200);
    }

    public function show($id)
    {
        return response()->json(Categorie::find($id), 201);
    }

    public function store(Request $request)
    {
        $categorie = Categorie::create($request->all());
        $response = ['categorie' => $categorie, 'status' => 201];
        return response()->json($response, 201);

    }

    public function update(Request $request, $id)
    {
        $categorie = Categorie::find($id);
        $categorie->update($request->all());
        $response = ['categorie' => $categorie, 'status' => 200];
        return response()->json($response, 200);
    }

    public function delete(Request $request, $id)
    {
        $categorie = Categorie::find($id);
        $categorie->delete();
        $response = ['categorie' => "", 'status' => 204];
        return response()->json($response, 204);
    }
}
