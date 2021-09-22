<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddCompanyPackagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('company_packages', function (Blueprint $table) {
            $table->id();
            $table->softDeletes();
            $table->foreignId('company_id')->constrained()->on('companies')->references('id')->cascadeOnDelete()->cascadeOnDelete();
            $table->foreignId('package_id')->constrained()->on('packages')->references('id')->cascadeOnDelete()->cascadeOnDelete();
            $table->date('start_date');
            $table->date('stop_date');
            $table->double('total_amount');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('company_packages');
    }
}
