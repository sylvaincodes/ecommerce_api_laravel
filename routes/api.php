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

    // routes publiques
    Route::post('/login', 'Auth\ApiAuthController@login')->name('login.api');
    Route::post('/register', 'Auth\ApiAuthController@register')->name('register.api');

    // routes protégées
    Route::middleware('auth:api')->group(function () {

        // Routes pour tous y compris les clients
        Route::post('/logout', 'Auth\ApiAuthController@logout')->name('logout.api');

        // Routes Administrateur
        Route::group(['middleware' => ['api.admin']], function () {
            Route::get('/users', 'Admin\UserController@index')->middleware("api.admin");
            Route::get('/users/{id}', 'Admin\UserController@show')->middleware("api.admin");
            Route::apiResource("categories", Admin\CategorieController::class)->only(['index','show','update','destroy','store']);
        });
        
        // Routes Super Administrateur
        Route::group(['middleware' => ['api.superAdmin']], function () {
            Route::post('/users', 'Admin\UserController@store');
            Route::put('/users/{id}', 'Admin\UserController@update');
            Route::delete('/users/{id}', 'Admin\UserController@delete');
        });

    });

});
