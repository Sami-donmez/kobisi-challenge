<?php

namespace App\Http\Resources\Api;

use Carbon\Carbon;
use Illuminate\Http\Resources\Json\JsonResource;

class CompanyPackageResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            "status" => "ok",
            "start_date" => Carbon::parse($this->start_date)->format('d/m/Y'),
            "end_date" => Carbon::parse($this->stop_date)->format('d/m/Y'),
            "package" => $this->package
        ];
    }
}
