<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateCategoriesTableStringsDefault extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('categories', function (Blueprint $table) {
            $table->string('parent_id')->default(NULL)->change();
            $table->string('status')->default(NULL)->change();
            $table->string('order')->default(NULL)->change();
            $table->string('is_featured')->default(NULL)->change();
            $table->string('is_default')->default(NULL)->change();
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
            $table->string('parent_id')->nullable()->change();
            $table->string('status')->nullable()->change();
            $table->string('order')->nullable()->change();
            $table->string('is_featured')->nullable()->change();
            $table->string('is_default')->nullable()->change();
        });
    }
}
