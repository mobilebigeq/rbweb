<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDoctorsSpecializationMapping extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Schema::create('doctors_specialization_mapping', function (Blueprint $table) {
        //     $table->increments('id');
        //     $table->integer('doctors_id')->unsigned();
        //     $table->integer('doctor_specializations_id')->unsigned();

        //     $table->foreign('doctors_id')->references('id')->on('doctors');
        //     $table->foreign('doctor_specializations_id')->refernces('id')->on('doctor_specializations');

        //     $table->timestamps();
        // });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('doctors_specialization_mapping');
    }
}
