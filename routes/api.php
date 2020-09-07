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
    Route::get('/test', function () {
        return "Hi Thai success";
    });

    Route::get('/home','Api\HomeController@home');
    Route::POST('/home/search','Api\HomeController@search');
    Route::get('/property/{id}','Api\HomeController@getAProperty');





});

Route::middleware(['cors', 'api' ,'auth'])->group(function () {
    Route::get('/user', function (Request $request) {
        return $request->user();
    });


});
