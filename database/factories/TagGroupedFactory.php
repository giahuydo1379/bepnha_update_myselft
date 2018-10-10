<?php

use Faker\Generator as Faker;

$factory->define(App\Models\TagGrouped::class, function (Faker $faker) {
    return [
        'tag_id' => $faker->numberBetween($min=1, $max=20),
        'tag_group_id' => $faker->numberBetween($min=1, $max=10),
    ];
});
