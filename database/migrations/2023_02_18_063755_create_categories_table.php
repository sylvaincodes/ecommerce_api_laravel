<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->nullable();
            $table->integer('parent_id')->unsigned()->default(0);
            $table->text('description')->nullable();
            $table->string('status')->default('published');
            $table->string('author_type')->nullable();
            $table->string('icon')->nullable();
            $table->integer('order')->unsigned()->default(0);
            $table->integer('is_featured')->unsigned()->default(0);
            $table->integer('is_default')->unsigned()->default(0);
            $table->string('image')->nullable();
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
        Schema::dropIfExists('categories');
    }
}
