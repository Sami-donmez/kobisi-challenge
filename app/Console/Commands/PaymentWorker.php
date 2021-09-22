<?php

namespace App\Console\Commands;

use App\Models\Company;
use Illuminate\Console\Command;

class PaymentWorker extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'pay';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Ödeme İşlemlerini yapan worker';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $companyList = Company::where('status',0)->get();

        foreach ($companyList as $company){

        }
    }
}
