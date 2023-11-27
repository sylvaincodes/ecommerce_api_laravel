<?php

namespace App\Http\Controllers\Admin;

use App\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        return response()->json(["status" => "success", "data" => User::all() ], 200);
    }

    public function show($id)
    {
        return response()->json(User::find($id), 201);
    }

    public function store(Request $request)
    {
        $user = User::create($request->all());
        $response = ['user' => $user, 'status' => "success"];
        return response()->json($response, 201);
    }

    public function update(Request $request, $id)
    {
        $user = User::find($id);
        $user->update($request->all());
        $response = ['user' => $user, 'status' => "success"];
        return response()->json($response, 200);
    }

    public function delete(Request $request, $id)
    {
        $user = User::find($id);
        $user->delete();
        $response = ['user' => "", 'status' => "success"];
        return response()->json($response, 204);
    }
}