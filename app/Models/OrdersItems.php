<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OrdersItems extends Model
{

public $table = 'orders_items';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'order_id',
        'product_id',
        'price',
        'quantity',
        'size',
        'total',
        'status'
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
     * Get the orders that owns the phone.
     */
    public function order()
    {
        return $this->belongsTo('App\Models\Order');
    }


}
