<?php

namespace App\Http\Controllers\Admin;
use App\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        return response()->json(User::all(), 200);
    }
 
    public function show($id)
    {
        return response()->json(User::find($id), 201);
    }

    public function store(Request $request)
    {
        $user=User::create($request->all());
        return response()->json($user, 201);
    }

    public function update(Request $request, $id)
    {
        $user= User::find($id);
        $user->update($request->all());
        return response()->json($user, 200);
    }

    public function delete(Request $request, $id)
    {
        $user= User::find($id);
        $user->delete();
        return response()->json($user, 204);
        
    }
}
