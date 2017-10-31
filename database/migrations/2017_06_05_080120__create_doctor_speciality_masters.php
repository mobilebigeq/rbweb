<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDoctorSpecialityMasters extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Schema::create('doctor_speciality_masters', function (Blueprint $table) {
        //     $table->increments('id');
        //      $table->integer('doctors_id')->unsigned();
        //     $table->integer('doctor_specialization_masters_id')->unsigned();

        //     $table->foreign('doctors_id')->references('id')->on('doctors');
        //     $table->foreign('doctor_specialization_masters_id')->reference('id')->on('speciality_masters');
            
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
        Schema::dropIfExists('doctor_speciality_masters');
    }
}
