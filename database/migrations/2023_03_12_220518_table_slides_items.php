<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TableSlidesItems extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('slides_items', function (Blueprint $table) {
            $table->increments('id');
            $table->bigInteger('slide_id');
            $table->string('image')->nullable();
            $table->string('title')->nullable();
            $table->string('description')->nullable();
            $table->string('btn')->nullable();
            $table->string('link')->nullable();
            $table->string('order')->nullable();
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
        Schema::dropIfExists('slides_items');
    }
}
