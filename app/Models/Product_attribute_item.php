<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product_attribute_item extends Model
{
/**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'product_attribute_id',
        'name',
        'value',
        'url',
        'is_default',
        'slug',
        'order',
        'status'
    ];
}
