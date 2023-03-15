<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Slide;
use Faker\Generator as Faker;

$factory->define(Slide::class, function (Faker $faker) {
    return [
        
            'name' => $faker->text(10),
            'key' => $faker->text(5).'-'.$faker->text(5),
            'description' => $faker->text(100),
            'status' => 'published',

    ];
});
