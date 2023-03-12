<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateCategoriesTableStrings extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('categories', function (Blueprint $table) {
            $table->string('parent_id')->nullable()->change();
            $table->string('status')->nullable()->change();
            $table->string('order')->nullable()->change();
            $table->string('is_featured')->nullable()->change();
            $table->string('is_default')->nullable()->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('categories', function (Blueprint $table) {
            $table->integer('parent_id')->nullable()->change();
            $table->string('status')->nullable()->change();
            $table->integer('order')->nullable()->change();
            $table->integer('is_featured')->nullable()->change();
            $table->integer('is_default')->nullable()->change();
        });
    }
}
