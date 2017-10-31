<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDoctorAwardsHistory extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('doctor_awards_history', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('doctors_id')->unsigned();
            $table->integer('awards_history_id')->unsigned();

            $table->foreign('doctors_id')->references('id')->on('doctors');
            $table->foreign('awards_history_id')->references('id')->on('awards_history');
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
        Schema::dropIfExists('doctor_awards_history');
    }
}
