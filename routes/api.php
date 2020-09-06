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

Route::middleware('cors:auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::middleware('cors:api')->get('/test',function(){
    return "Hi Thai success";
});
