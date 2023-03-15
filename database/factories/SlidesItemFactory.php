<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\SlidesItem;
use Faker\Generator as Faker;

$factory->define(SlidesItem::class, function (Faker $faker) {
    return [
            'slide_id' => 1,
            'title' => $faker->text(10),
            'description' => $faker->text(100),
            'btn' => $faker->text(10),
            'link' => 'published',
            'order' => '1',
            'image' => 'slide.jpg',
            'image_url' => 'http://192.168.1.4:8000/media/slides/slide.jpg',
    ];
});
