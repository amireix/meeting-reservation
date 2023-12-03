<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\slot;
use Illuminate\Http\Request;

class ReservationController extends Controller
{
    public function store(Request $request,slot $slot){

        $sucess = $slot->reservation()->store($request->all());
        if (!$sucess){
            return response()->json($sucess,409);
        }
        return response()->json($sucess,200);
    }
}
