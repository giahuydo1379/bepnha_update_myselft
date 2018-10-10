<?php

use Illuminate\Database\Seeder;

class TagItemSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Models\TagItem::class, 50)->create();
    }
}
