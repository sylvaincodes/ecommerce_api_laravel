<?php

namespace App\Http\Controllers\Admin;
use App\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        return User::all();
    }
 
    public function show($id)
    {
        die("ok");
        return response()->json(User::find($id), 201);
    }

    public function store(Request $request)
    {
        $user=User::create($request->all());
        return response()->json($user, 201);
    }

    public function update(Request $request, User $user)
    {
        $user->update($request->all());
        return response()->json($user, 200);
    }

    public function delete(Request $request, User $user)
    {
        $user->delete();
        return response()->json($user, 204);
        
    }
}
