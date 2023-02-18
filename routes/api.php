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

Route::group(['middleware' => ['cors', 'json.response']], function () {

    // public routes
    Route::post('/login', 'Auth\ApiAuthController@login')->name('login.api');
    Route::post('/register', 'Auth\ApiAuthController@register')->name('register.api');

    // our routes to be protected will go in here
    Route::middleware('auth:api')->group(function () {

        Route::post('/logout', 'Auth\ApiAuthController@logout')->name('logout.api');

        Route::get('/users', 'Admin\UserController@index');
        Route::get('/users/{id}', 'Admin\UserController@show');
        Route::post('/users', 'Admin\UserController@store');
        Route::put('/users/{id}', 'Admin\UserController@update');
        Route::delete('/users/{id}', 'Admin\UserController@delete');

        Route::apiResource("categories", Admin\CategorieController::class)->only(['index','show','update','destroy','store']);

    });

});
