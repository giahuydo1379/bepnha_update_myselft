<?php

use Faker\Generator as Faker;

$factory->define(App\Models\TagItem::class, function (Faker $faker) {
    return [
        'tag_id' => $faker->numberBetween($min=1, $max=20),
        'item_id' => $faker->numberBetween($min=1, $max=50),
    ];
});
