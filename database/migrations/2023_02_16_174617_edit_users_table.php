<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class EditUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('name');
        });

        Schema::table('users', function (Blueprint $table) {
            $table->increments('id')->change();
            $table->string('first_name')->nullable();
            $table->string('last_name')->nullable();
            $table->string('username',60)->unique()->nullable();
            $table->string('password')->nullable()->change();
            $table->integer('avatar_id')->unsigned()->nullable();
            $table->boolean('super_user')->default(0);
            $table->boolean('manage_supers')->default(0);
            $table->text('permissions')->nullable();
            $table->timestamp('last_login')->nullable();


        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
