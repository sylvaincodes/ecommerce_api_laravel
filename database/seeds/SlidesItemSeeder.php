<?php

use Illuminate\Database\Seeder;
use App\Models\SlidesItem;

class SlidesItemSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //Let's truncate our last records
        SlidesItem::truncate();

        //Then create a few categorie in  our database
        factory(App\Models\SlidesItem::class,5)->create();
    }
}
