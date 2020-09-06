<?php

namespace App\Http\Controllers\Api;

use App\Apartment;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Laminas\Diactoros\Response\JsonResponse;

class HomeController extends Controller
{
    public function home()
    {



    return response()->json(
      [
          'apartments' => Apartment::all(),

      ]
    );
    }
}
