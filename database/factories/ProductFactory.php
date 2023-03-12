<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Product;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

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

$factory->define(App\Models\Product::class, function (Faker $faker) {
    return [
        'name' => $faker->text(10),
        'description' => $faker->text(100),
        'content' => $faker->text(300),
        'status' => 'published',
        'images' => $faker->randomElement(['Pro-1a.png' , 'Pro-1b.png', 'Pro-2a.png', 'Pro-2b.png']),
        'quantity' => $faker->randomNumber(2,true),
        'category_id' => '1',
        'brand_id' => '1',
        'price' => $faker->randomNumber(3, true),
        'sale_price' => $faker->randomNumber(2, true),
        'length' => $faker->randomNumber(2, true),
        'wide' => $faker->randomNumber(2, true),
        'height' => $faker->randomNumber(2, true),
        'weight' => $faker->randomNumber(3, true),
        'stock_status' => $faker->randomElement(['in_stock' , 'out_stock']),
    ];
});
