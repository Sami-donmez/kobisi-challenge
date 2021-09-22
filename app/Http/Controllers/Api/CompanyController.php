<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\Api\CompanyPackageRequest;
use App\Http\Requests\Api\CompanyRegisterRequest;
use App\Http\Resources\Api\CompanyPackageResource;
use App\Http\Resources\Api\CompanyRegisterResource;
use App\Http\Resources\Api\MyCompanyResource;
use App\Jobs\PaymentJob;
use App\Models\Company;
use App\Models\CompanyPackage;
use App\Models\Package;
use Carbon\Carbon;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Request;

class CompanyController extends ApiController
{
    /**
     * Company sisteme kayıtolmalarını saglar
     * @param CompanyRegisterRequest $request
     * @return \Illuminate\Http\Resources\Json\AnonymousResourceCollection|JsonResponse
     */
    public function register(CompanyRegisterRequest $request)
    {
       $company = new Company();
       $company->name = $request->name;
       $company->surname = $request->lastname;
       $company->email = $request->email;
       $company->password = Hash::make($request->password);
       $company->site_url = $request->site_url;
       $company->company_name = $request->company_name;
       $company->access_token = "";
       $company->status = 1;

       if ($company->save()) {
           return new CompanyRegisterResource($company);
       }else{
           return $this->errorResponse('Şirket Kaydı Yapılamadı');
       }

    }

    /**
     * @param CompanyPackageRequest $request
     * @return CompanyPackageResource
     */
    public function addPackage(CompanyPackageRequest $request)
    {
        $package = Package::find($request->package_id);
        $companyPackage= new  CompanyPackage();
        $companyPackage->company_id = $request->company_id;
        $companyPackage->package_id = $request->package_id;
        $companyPackage->start_date = Carbon::today()->format('Y-m-d');
        $days = $package->type == 'mothly' ? 30 : 365;
        $companyPackage->stop_date = Carbon::today()->addDays($days)->format('Y-m-d');
        $companyPackage->total_amount = $package->amount;
        $companyPackage->status = 1;
        if ($companyPackage->save()) {
            dispatch(new PaymentJob($companyPackage->company->id));
            return new  CompanyPackageResource($companyPackage);
        }else{
            return $this->errorResponse('Paket Eklenemedi');
        }

    }
    public function checkPackage(Request $request)
    {
         $company=request()->user();
         return new MyCompanyResource($company);

    }
}
