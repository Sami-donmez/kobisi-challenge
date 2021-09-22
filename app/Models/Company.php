<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class Company extends Model
{
    use HasFactory,HasApiTokens,Notifiable,SoftDeletes;
    protected $fillable=[
        'name',
    ];
    protected $guarded=['name'];
    protected $hidden=['password','access_token','deleted_at'];

    public function package()
    {
       return $companyPackage= $this->hasOne(CompanyPackage::class);
        //return $companyPackage->package;
    }
}
