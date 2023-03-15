<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TableSlidesItemsChangeImageUrlAgainAgain extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('slides_items', function (Blueprint $table) {
            $table->renameColumn('image_url', 'url');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('slides_items', function (Blueprint $table) {
            $table->renameColumn('url', 'image_url');
        });
    }
}
