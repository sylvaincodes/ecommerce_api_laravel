<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductVariationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_variations', function (Blueprint $table) {
            $table->id();
            $table->double('price', 15, 4)->nullable()->default(123.4567);
            $table->double('price_discount', 15, 4)->nullable()->default(123.4567);
            $table->date('date_debut_discount')->nullable();
            $table->date('date_fin_discount')->nullable();
            $table->string('stock_status')->nullable();
            $table->string('weight')->nullable();
            $table->string('lenght')->nullable();
            $table->string('wide')->nullable();
            $table->string('height')->nullable();
            $table->string('url', 1000)->nullable();
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
        Schema::dropIfExists('product_variations');
    }
}
