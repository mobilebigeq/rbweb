<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateQuestionSectionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
     {
    //     Schema::create('question_section', function (Blueprint $table) {
    //         $table->increments('id');
    //         $table->increments('group_id');
    //         $table->string('question')->nullable();
    //         $table->text('answer');
    //         $table->string('page');
    //         $table->timestamps();
    //     });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('question_section');
    }
}
