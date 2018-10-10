<?php

use Faker\Generator as Faker;

$factory->define(App\Models\TagGroup::class, function (Faker $faker) {
    return [
        'title' => $faker->word,
        'disable' => $faker->randomElement(['0', '1']),
        'created_at' => new DateTime,
        'updated_at' => new DateTime,

    ];
});
