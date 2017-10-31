<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCenterBriefFacilities extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('center_brief_facilities', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('centers_id')->unsigned();
            $table->integer('brief_facilities_id')->unsigned();

            $table->foreign('centers_id')->references('id')->on('centers');
            $table->foreign('brief_facilities_id')->references('id')->on('brief_facilities');
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
        Schema::dropIfExists('center_brief_facilities');
    }
}
