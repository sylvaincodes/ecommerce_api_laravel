<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductAttributeItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_attribute_items', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('product_attribute_id');
            $table->string('title')->nullable()->unique();
            $table->string('value')->nullable()->unique();
            $table->string('slug')->nullable()->unique();
            $table->string('order')->nullable();
            $table->string('is_default')->nullable();
            $table->string('status')->nullable();
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
        Schema::dropIfExists('product_attribute_items');
    }
}
