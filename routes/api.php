<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\User;
use PhpParser\Node\Scalar\MagicConst\Function_;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//Get all users
Route::get('users', 'UserController@index');


//Get one user
Route::get('users/{id}', 'UserController@show');

// Create a user
Route::post('users', 'UserCOntroller@store');


//Update a user
Route::get('users/{id}', 'UserController@upadte');


//Delete a user
Route::get('users/{id}', 'UserCOntroller@delete');