<?php

use App\Http\Resources\RoomResource;
use App\Http\Resources\SlotResouce;
use Carbon\Carbon;

use App\Models\room;
use App\Models\slot;
use App\Models\reservation;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use function PHPSTORM_META\type;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {

    // $rooms =  RoomResource::collection (room::with(['slots'=>function($query){
    //     $query->with('reservation');
    // }])->get());
    // return response()->json($rooms,200);

    return Inertia::render('test');
});
