<?php

use Faker\Generator as Faker;

$factory->define(App\Models\Tag::class, function (Faker $faker) {
    return [
        'title' => $faker->text,
        'type' => $faker->randomElement(['1', '2']),
        'disable' => $faker->randomElement(['0', '1']),
        'created_by' => 1,
        'order_by' => 0,
        'created_at' => new DateTime,
        'updated_at' => new DateTime,
    ];
});
