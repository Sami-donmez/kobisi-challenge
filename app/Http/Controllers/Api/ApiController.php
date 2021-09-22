<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ApiController extends Controller
{
    protected  function errorResponse($message,$status = 500){
        return response()->json([
            'status'=>'error',
            'message'=>$message
        ],$status);
    }
}
