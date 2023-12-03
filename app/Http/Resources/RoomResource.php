<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class RoomResource extends JsonResource
{
    /**
     * Transform the resource collection into an array.
     *
     * @return array<int|string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'slots' => SlotResouce::collection( $this->whenLoaded('slots') ),
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ];
    }
}
