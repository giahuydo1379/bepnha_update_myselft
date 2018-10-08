<?php

use Faker\Generator as Faker;

$factory->define(App\Models\Category::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'type' => $faker->randomElement(['1', '2']),
        'disable' => $faker->randomElement(['0', '1']),
        'style' => $faker->randomElement(['1', '2']),
        'parent_cate' => 0,
        'created_by' => 1,
        'icon_location' =>'category/'. '2018/'. $faker->randomElement(['1', '12']). '/'. $faker->randomElement(['1', '30']). '/'. $faker->name,
        'created_at' => new DateTime,
        'updated_at' => new DateTime,
    ];
});
