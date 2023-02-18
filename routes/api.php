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

Route::group(['middleware' => 'auth:api'], function () {

    //Get all users
    Route::get('users', 'Admin\UserController@index');

    //Get one user
    Route::get('users/{id}', 'Admin\UserController@show');

    // Create a user
    Route::post('users', 'Admin\UserController@store');

    //Update a user
    Route::put('users/update/{id}', 'Admin\UserController@update')->name('users.update');
    
    //Delete a user
    Route::delete('users/delete', 'Admin\UserController@delete')->name('users.delete');;
    
});

//Registered user endpoint
Route::post('register', 'Auth\RegisterController@register');


//Login user end point
Route::post('login', 'Auth\LoginController@login');


Route::post('logout', 'Auth\LoginController@logout');