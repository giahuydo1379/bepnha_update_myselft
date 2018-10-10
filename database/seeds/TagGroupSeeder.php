<?php

use Illuminate\Database\Seeder;

class TagGroupSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Models\TagGroup::class, 10)->create();
    }
}
