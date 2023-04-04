<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product_variation extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'product_id',
        'price',
        'price_discount',
        'date_debut_discount',
        'date_fin_discount',
        'stock_status',
        'weight',
        'lenght',
        'wide',
        'height',
        'url'
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

}
