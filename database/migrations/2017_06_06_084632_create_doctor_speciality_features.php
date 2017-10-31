<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDoctorSpecialityFeatures extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('doctor_speciality_features', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('doctors_id')->unsigned();
            $table->integer('our_speciality_features_id')->unsigned();

             $table->foreign('doctors_id')->references('id')->on('doctors');
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
        Schema::dropIfExists('doctor_speciality_features');
    }
}
