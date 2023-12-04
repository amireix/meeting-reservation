<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\reservation;
use App\Models\slot;
use Illuminate\Http\Request;

class ReservationController extends Controller
{
    public function store(Request $request){


        // $sucess = $slot->reservation()->store($request->all());
       try{
            $reservation = reservation::create($request->all());
            return response()->json($reservation,200);
       }
       catch(\Illuminate\Database\QueryException $exception){
            return response()->json('',404);
       }

    }
}
