<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SlidesItem extends Model
{

    public $table = 'slides_items';
      /**
     * The attributes that are mass assignable.
     *
     * @var array
     */ 
    protected $fillable = [
        'slide_id',
        'image',
        'title',
        'description',
        'btn',
        'link',
        'order',
        'url',
        'subtitle'
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
