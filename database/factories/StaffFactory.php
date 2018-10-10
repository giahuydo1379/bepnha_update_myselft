<?php

use Faker\Generator as Faker;

$factory->define(App\Models\Staff::class, function (Faker $faker) {
    return [
        'email' => $faker->email,
        'password' => $faker->password,
        'fullname' => $faker->name,
        'phone' =>  $faker->phoneNumber,
        'group_id' =>  $faker->numberBetween($min=1, $max=3),
        'disable' => $faker->randomElement(['0', '1']),
    ];
});
