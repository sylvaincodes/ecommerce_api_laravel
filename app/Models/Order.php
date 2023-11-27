<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id',
        'checkout_session_id',
        'cart_id',
        'user_id',
        'payment_intent',
        'amount_total',
        'amount_subtotal',
        'amount_shipping',
        'amount_discount',
        'amount_tax'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
       
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        
    ];


     /**
     * The date fields for the model.clear
     *
     * @var array
     */
    protected $dates = [
        'created_at',
        'updated_at',
    ];

   
   /**
     * Get the orders items for the order post.
     */
    public function ordersitems()
    {
        return $this->hasMany('App\Models\OrdersItems','order_id');
    }

}
