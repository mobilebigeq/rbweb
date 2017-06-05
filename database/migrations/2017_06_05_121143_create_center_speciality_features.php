<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCenterSpecialityFeatures extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('center_speciality_features', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('centers_id')->unsigned();
            $table->integer('our_speciality_features_id')->unsigned();

             $table->foreign('centers_id')->references('id')->on('centers');
            $table->foreign('our_speciality_features_id')->references('id')->on('our_speciality_features');
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
        Schema::dropIfExists('center_speciality_features');
    }
}
