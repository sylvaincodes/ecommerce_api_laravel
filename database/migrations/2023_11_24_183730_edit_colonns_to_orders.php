<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class EditColonnsToOrders extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('orders', function (Blueprint $table) {

            if (Schema::hasColumn('orders','method_payment')) {
                $table->dropColumn(['method_payment','payment_id','total','shipping_fees']);
            }
            if (!Schema::hasColumn('orders','cart_id')) {
                $table->string('cart_id')->unique();
                $table->string('checkout_session_id')->unique();
                $table->integer('user_id');
                $table->string('currency')->nullable();
                $table->string('email')->nullable();
                $table->string('name')->nullable();;
                $table->string('payment_intent')->nullable()->unique();
                $table->string('status')->default('open');
                $table->double('amount_total', 15, 4)->nullable()->default(0);
                $table->double('amount_shipping', 15, 4)->nullable()->default(0);
                $table->double('amount_discount', 15, 4)->nullable()->default(0);
                $table->double('amount_tax', 15, 4)->nullable()->default(0);
            }
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('orders', function (Blueprint $table) {
            $table->dropColumn(['cart_id','checkout_session_id','user_id',
            'currency','email','name','payment_intent','payment_status','status',
            'amount_total',
            'amount_shipping','amount_discount','amount_tax']);
            $table->string('method_payment')->nullable();
            $table->string('payment_id')->nullable();
            $table->double('total', 15, 4)->nullable()->default(0);
            $table->double('shipping_fees', 15, 4)->nullable()->default(0);
        });
    }
}
