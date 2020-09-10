<?php

namespace App\Http\Controllers\Api;

use App\AgentRating;
use App\Apartment;
use App\ApartmentFeature;
use App\ApartmentRating;
use App\ApartmentType;
use App\BusinessType;
use App\Country;
use App\Http\Controllers\Controller;
use App\Township;
use App\Transaction;
use App\User;
use App\State;
use Illuminate\Http\Request;
use Laminas\Diactoros\Response\JsonResponse;

class HomeController extends Controller
{
    public function user()
    {
        return response()->json(
            ['user' =>User::find(1)] );
    }
    public function home()
    {
        return response()->json(
            [
                'TotalRating' => ApartmentRating::sum('rate') + AgentRating::sum('rate'),
                'TotalHouse' => Apartment::all()->count(),
                'TotalClient'=>User::all()->count(),
                'TotalTransaction'=>Transaction::all()->count(),
                'Country' => Country::all(),
                'State' =>State::all(),
                'Township'=>Township::all(),
                'ApartmentType'=>ApartmentType::all(),
                'BusinessType'=>BusinessType::all(),
                'Apartments'=>Apartment::with(['user','apartmentType','businessType','township','images'])->get(),
                'ApartmentFeatures'=>ApartmentFeature::all(),
            ]
        );
    }

    public function search(){




    }
    public function getAProperty(){

       $id= request('id');
        return response()->json(
            [
                'apartment'=>Apartment::where('id',$id)->with(['user','apartmentType','businessType','township','images'])->get()
            ]
        );



    }
}
