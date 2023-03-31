<?php

use Illuminate\Support\Facades\Route;

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
    Route::apiResource("categories", Admin\CategorieController::class)->only(['index']);
    Route::apiResource("brands", Admin\BrandController::class)->only(['index']);
    Route::apiResource("collections", Admin\CollectionController::class)->only(['index']);
    Route::apiResource("slidesitems", Admin\SlidesItemController::class)->only(['index']);
    Route::apiResource("products", Admin\ProductController::class)->only(['index']);
    Route::apiResource("slides", Admin\SlideController::class)->only(['index']);

    // Routes protégées
    Route::middleware('auth:api')->group(function () {

        // Routes pour tous y compris les clients
        Route::post('/logout', 'Auth\ApiAuthController@logout')->name('logout.api');

        // Routes Administrateur
        Route::group(['middleware' => ['api.admin']], function () {
            Route::get('/users', 'Admin\UserController@index');
            Route::get('/users/{id}', 'Admin\UserController@show');
            Route::apiResource("categories", Admin\CategorieController::class)->only(['show','update','destroy','store']);
            Route::apiResource("products", Admin\ProductController::class)->only(['show','update','destroy','store']);
            Route::apiResource("brands", Admin\BrandController::class)->only(['show','update','destroy','store']);
            Route::apiResource("collections", Admin\CollectionController::class)->only(['show','update','destroy','store']);
            Route::get('/search/products', 'Admin\ProductController@search');
            Route::apiResource("slidesitems", Admin\SlidesItemController::class)->only(['show','update','destroy','store']);
            Route::apiResource("slides", Admin\SlideController::class)->only(['show','update','destroy','store']);
            Route::apiResource("pattributes", Admin\ProductAttributeController::class)->only([ 'index','show','update','destroy','store']);
            Route::apiResource("pattributeitems", Admin\ProductAttributeItemController::class)->only(['index','show','update','destroy','store']);
        });
        
        // Routes Super Administrateur
        Route::group(['middleware' => ['api.superAdmin']], function () {
            Route::post('/users', 'Admin\UserController@store');
            Route::any('/users/{id}', 'Admin\UserController@update');
            Route::delete('/users/{id}', 'Admin\UserController@delete');
        });

    });

});
