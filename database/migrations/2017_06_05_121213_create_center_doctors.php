<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCenterDoctors extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('center_doctors', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('centers_id')->unsigned();
            $table->integer('doctors_id')->unsigned();

             $table->foreign('centers_id')->references('id')->on('centers');
            $table->foreign('doctors_id')->references('id')->on('doctors');
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
        Schema::dropIfExists('center_doctors');
    }
}
