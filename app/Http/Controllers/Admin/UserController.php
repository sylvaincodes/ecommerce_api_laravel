<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Support\Facades\Validator;
use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

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

        $validator = Validator::make($request->all(), [
            'email' => 'required|string|email|max:255',
            'password' => 'required|string|min:6|confirmed',
        ]);

        $password = $request['password'];
        $request['password']=Hash::make($password);

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