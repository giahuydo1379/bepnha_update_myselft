<?php

use Faker\Generator as Faker;

$factory->define(App\Models\Notebook::class, function (Faker $faker) {
    return [
        'user_id' => \App\Models\Login_user::all()->random()->uuid,
      //  'user_id' => $faker->create(App\Models\Login_user::class)->uuid,
        'item_id' => $faker->numberBetween($min=1, $max=50),
        'created_at' => new DateTime,
    ];
});
