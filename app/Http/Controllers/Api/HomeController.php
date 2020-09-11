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

    public function search()
    {
        $apartments= Apartment::where('apartment_type_id',request('houseType'))
            ->where('number_of_bathroom',request('numberOfBathRoom'))
            ->where('floor',request('numberOfFloor'))
            ->where('business_type_id',request('target'))
            ->whereBetween('area',[request('priceMin'),request('priceMax')])
            ->whereBetween('price',[request('priceMin'),request('priceMax')])
            ->whereBetween('year_build',[request('yearBuiltMin'), request('yearBuiltMax')])
            ->sortBy(request('sortBy'))->with(['user','apartmentType','businessType','township','images'])
            ->with(['user','apartmentType','businessType','township','images'])
            ->get();

        return response()->json(
            [
                'apartments'=>$apartments
            ]
        );
    }


    public function getDetails()
    {
        $id= request('id');
        return response()->json(
            [
                'apartment'=>Apartment::where('id',$id)->with(['user','apartmentType','businessType','township','images'])->get()
            ]
        );
    }

    public function postHome()
    {

        $apartment = new Apartment;
        $apartment->township_id = request('city');
//        $apartment->name=request(''  );
        $apartment->apartment_type_id=request('houseType');
        $apartment->number_of_bathroom=request('numberOfBathRoom');
        $apartment->floor=request('numberOfFloor');
        $apartment->price=request('price');
        $apartment->traget=request('target');
        $apartment->save();

        return response()->json(
            [
                'response'=>"Success, Thank you for the new Property"
            ]
        );
    }

    public function madeRentSell()
    {
        Apartment::where('id',request('apartmentId'))
            ->update(['is_deal_done'=>true,
                'customer_id'=>request('userId')
        ]);

        return response()->json(
            [
                'response'=>'success'
            ]
        );
    }
}
