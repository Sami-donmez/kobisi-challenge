<?php

namespace App\Jobs;

use App\Models\Company;
use App\Models\CompanyPackage;
use App\Models\CompanyPayment;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class PaymentJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;
    private $company;
    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($company)
    {
        $this->company = $company;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $company = Company::findOrFail($this->company);
        $package = CompanyPackage::where('company_id',$this->company)->first();

        $payments = CompanyPayment::where('company_id',$company->id)->where('status','1')->count();
        if ($payments >= 1) {
            logger()->warning('odeme daha önceden alınmıştır.');
        }

        $status = $this->payment() ? 1 : 0;

        $payment = new CompanyPayment();
        $payment->company_id = $company->id;
        $payment->amount = $package->package->amount;
        $payment->status = $company->status;
        $payment->save();

        if ($status == 1) {
            $package->status = 1;
            $package->save();
        }else {
            $payments=CompanyPayment::where('company_id',$company->id)->count();
            if ($payments<3) {
                $day = \Carbon\Carbon::now()->addDay();
                PaymentJob::dispatch($company->id)->delay($day);
            }else{
                $company->status = 0;
                $company->save();
            }
        }
    }


    public function payment(){
        $hash=random_int(0 , 1000);
        return $hash % 2 == 0 ? true : false;

    }
}
