<?php

use App\Http\Controllers\Api\CompanyController;
use App\Http\Controllers\Api\PingController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::get('ping',[PingController::class,'ping']);
Route::post('register',[CompanyController::class,'register']);
Route::post('add-package',[CompanyController::class,'addPackage']);

Route::middleware(['auth:sanctum'])->group(function () {
    Route::get('my-company', [CompanyController::class,'checkPackage']);
});
