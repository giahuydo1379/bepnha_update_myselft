<?php

use Illuminate\Database\Seeder;

class TagGroupedSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Models\TagGrouped::class, 50)->create();
    }
}
