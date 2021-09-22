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
        });
    }
}
