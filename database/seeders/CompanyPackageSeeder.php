<?php

namespace Database\Seeders;

use App\Models\Company;
use App\Models\CompanyPackage;
use App\Models\CompanyPayment;
use App\Models\Package;
use Carbon\Carbon;
use Illuminate\Database\Seeder;

class CompanyPackageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $companies=Company::all();

        foreach ($companies as $company){
            $package=Package::inRandomOrder()->first();

            $companyPayment = new CompanyPayment();
            $companyPayment->status = 1;
            $companyPayment->company_id = $company->id;
            $companyPayment->amount = $package->amount;
            $companyPayment->save();

            dump($companyPayment->id);

            $companyPackage= new  companyPackage();
            $companyPackage->company_id = $company->id;
            $companyPackage->package_id = $package->id;
            $companyPackage->start_date = Carbon::today();
            $day=$package->type == 'monthly' ? 30 : 365;
            $companyPackage->stop_date = Carbon::today()->addDays($day);
            $companyPackage->total_amount = $package->amount;
            $companyPackage->status = 1;
            $companyPackage->Save();
        }
    }
}
