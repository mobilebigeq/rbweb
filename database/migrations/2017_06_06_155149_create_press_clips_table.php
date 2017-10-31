<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePressClipsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Schema::create('press_clips', function (Blueprint $table) {
        //     $table->increments('id');
        //     $table->string('image');
        //     $table->string('author');
        //     $table->date('date');
        //     $table->string('publish_in');
        //     $table->text('short_description')->nullable();
        //     $table->longtext('description')->nullable();
        //     $table->string('page');
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
        Schema::dropIfExists('press_clips');
    }
}
