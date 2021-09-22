<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\CompanyRegisterRequest;
use Illuminate\Http\Request;

class CompanyController extends Controller
{
    /**
     * @param CompanyRegisterRequest $request
     * @return bool
     */
    public function register(CompanyRegisterRequest $request)
    {
        return true;
    }
}
