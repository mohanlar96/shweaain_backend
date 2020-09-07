<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Apartment extends Model
{

    public function apartmentType(){
        return $this->hasOne('App\ApartmentType','id','apartment_type_id');
    }
    public function businessType(){
        return $this->hasOne('App\BusinessType','id','business_type_id');
    }
    public function user(){
        return $this->hasOne('App\User','id','user_id');
    }
    public function township(){
        return $this->hasOne('App\Township','id','township_id');
    }
    public function images(){
        return $this->hasMany('App\Image','id','image_id');
    }



}
