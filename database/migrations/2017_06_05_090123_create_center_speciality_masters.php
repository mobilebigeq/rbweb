<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCenterSpecialityMasters extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Schema::create('center_speciality_masters', function (Blueprint $table) {
        //     $table->increments('id');
        //     $table->integer('centers_id')->unsigned();
        //     $table->integer('speciality_masters_id')->unsigned();

        //     $table->foreign('centers_id')->references('id')->on('centers');
        //     $table->foreign('speciality_masters_id')->references('id')->on('speciality_masters');
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
        Schema::dropIfExists('center_speciality_masters');
    }
}
