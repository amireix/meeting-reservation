<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\Pivot;

/**
 * App\Models\reservation
 *
 * @property int $id
 * @property int $room_id
 * @property int $slot_id
 * @property string $name
 * @property string $phone
 * @property string $email
 * @property string $company_name
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\room $room
 * @method static \Illuminate\Database\Eloquent\Builder|reservation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|reservation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|reservation query()
 * @method static \Illuminate\Database\Eloquent\Builder|reservation whereCompanyName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|reservation whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|reservation whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|reservation whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|reservation whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|reservation wherePhone($value)
 * @method static \Illuminate\Database\Eloquent\Builder|reservation whereRoomId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|reservation whereSlotId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|reservation whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class reservation extends Model
{
    public function room(){
        return $this->belongsTo(room::class,'room_id','id');
    }

}
