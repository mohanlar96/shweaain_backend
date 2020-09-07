<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class State extends Model
{
    public function townships()
    {
        $this->hasMany('App\Township','states_id','id');
    }
}
