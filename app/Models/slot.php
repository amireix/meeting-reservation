<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\slot
 *
 * @property int $id
 * @property string $start
 * @property int $room_id
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|slot newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|slot newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|slot query()
 * @method static \Illuminate\Database\Eloquent\Builder|slot whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|slot whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|slot whereRoomId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|slot whereStart($value)
 * @method static \Illuminate\Database\Eloquent\Builder|slot whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class slot extends Model
{
    use HasFactory;

    protected $fillable = [];

    public function reservation(){
        return $this->hasOne(reservation::class,'slot_id');
    }
}
