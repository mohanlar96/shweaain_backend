<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    public function states()
    {
        $this->hasMany('App\State','country_id','id');
    }
}
