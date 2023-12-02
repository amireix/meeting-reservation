<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class room extends Model
{
    use HasFactory;

    public function slots(){
        return $this->hasMany(slot::class,'room_id');
    }
    public function reservations()
    {
        return $this->hasManyThrough(reservation::class, slot::class);
    }
}
