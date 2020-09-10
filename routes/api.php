<?php

use Illuminate\Http\Request;
use Laravel\Passport\Passport;

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
Route::middleware(['cors', 'api' ])->group(function () {
    Route::get('/user','Api\HomeController@user');
    Route::get('/home','Api\HomeController@home');
    Route::get('/home/search','Api\HomeController@search');
    Route::get('/property/business','Api\HomeController@madeRentSell');
    Route::get('/property/{id}','Api\HomeController@getDetails');
    Route::post('/house/insert','Api\HomeController@postHome');
});

//Route::middleware(['cors','auth:api'])->get('/user', 'Api\HomeController@user');


