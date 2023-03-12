<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use Faker\Generator as Faker;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(App\Models\Review::class, function (Faker $faker) {
    return [
        'customer_id' => 1,
        'product_id' => 1,
        'star' => $faker->randomElement(['1' , '2', '3', '4', '5']),
        'status' => 'published',
        'comment' => $faker->text(100),
    ];
});
