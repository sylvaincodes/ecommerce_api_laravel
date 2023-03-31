<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class EditColumnToTableProductAttributeItems extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('product_attribute_items', function (Blueprint $table) {
            $table->dropColumn('title');
            $table->string('name')->unique()->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('product_attribute_items', function (Blueprint $table) {
            $table->string('title')->unique();
            $table->dropColumn('name');
        });
    }
}
