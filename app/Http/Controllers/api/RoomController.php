<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Http\Resources\RoomResource;
use App\Models\room;
use Illuminate\Http\Request;

class RoomController extends Controller
{
    public function index(){
        $rooms = new RoomResource (room::with(['slots'=>function($query){
            $query->with('reservation');
        }])->get());
        return response()->json($rooms,200);
    }
}
