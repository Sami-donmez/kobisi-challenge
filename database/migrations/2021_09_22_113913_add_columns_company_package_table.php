<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnsCompanyPackageTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('company_packages', function (Blueprint $table) {
            $table->tinyInteger('status')->comment(' 0 => bekliyor 1=> ödeme tamamlandı 2=> ödeme iptal edildi');
            $table->foreignId('transaction_id')->constrained()->nullable()->on('company_payments')->references('id')->cascadeOnDelete()->cascadeOnUpdate();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('company_packages', function (Blueprint $table) {
            $table->dropColumn('status');
            $table->dropForeign('transaction_id');
            $table->dropColumn('transaction_id');
        });
    }
}
