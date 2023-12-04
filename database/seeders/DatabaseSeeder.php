<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\room;
use App\Models\slot;
use DB;
use Illuminate\Database\Seeder;
use Carbon\Carbon;
class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $rooms = room::get(['id','name'])->whereIn('id', [4, 5, 6]);

     foreach($rooms as $room){
        $datetime = Carbon::createFromFormat('h:i A','9:00 PM');

        for($i = 0 ; $i < 24;$i++){
            DB::table('slots')->insert([
                'start' =>  $datetime->format('h:i A'),
                'end' => $datetime->addMinutes(30)->format('h:i A'),
                'room_id' => $room->id
            ]);

         }
     }
    }
}
