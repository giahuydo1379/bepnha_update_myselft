<?php

use Faker\Generator as Faker;

$factory->define(App\Models\Item::class, function (Faker $faker) {
    $alerts  =  [[
        'name' => $faker->name,
        'cheft' => $faker->name,
        'description' => $faker->text,


        'duration' => $faker->randomElement(['0', '24']). ':' . $faker->randomElement(['1', '60']),
        'time_to_done' => $faker->randomElement(['0', '24']). ':' . $faker->randomElement(['1', '60']),


        'view_count' => $faker->randomElement(['100', '200']),

        'image_location' =>'videos/'. '2018/'. $faker->randomElement(['1', '12']). '/'. $faker->randomElement(['1', '30']). '/'. $faker->name,

            'type' => $faker->randomElement(['1', '2']),
        'disable' => $faker->randomElement(['0', '1']),
        'level' => $faker->randomElement(['1', '5']),

        'is_featured' => $faker->randomElement(['0', '1']),
        'is_new' => $faker->randomElement(['0', '1']),
        'is_for_you' => $faker->randomElement(['0', '1']),
        'is_like' => $faker->randomElement(['0', '1']),
        'is_home' => $faker->randomElement(['0', '1']),
        'session_in_day' => $faker->randomElement(['0', '3']),


        'pcategory_id' => $faker->randomElement(['1', '10']),
        'category_id' => $faker->randomElement(['1', '10']),


        'created_by' => 1,
        'ordering' => 0,

        'created_at' => new DateTime,
        'updated_at' => new DateTime,

        'ingredients' => $faker->text,
        'ingredients_2' => $faker->text,
        'video_location' => '2018/'. $faker->randomElement(['1', '12']). '/'. $faker->randomElement(['1', '30']). '/'. $faker->name,

        'steps' => $faker->text,

        'note' => $faker->text,
    ]];

    foreach($alerts  as $key=>$alert){
        if(  $alerts[$key]['type'] == 2 ){
            $alerts[$key]['ingredients'] =
            $alerts[$key]['ingredients_2'] =
            $alerts[$key]['steps'] =
            $alerts[$key]['level'] =
            $alerts[$key]['note'] =

                null;
        }
    }



    return $alert;

});
