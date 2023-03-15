<?php

use Illuminate\Database\Seeder;
use App\Models\Slide;

class SlideSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //Let's truncate our last records
        Slide::truncate();

        //Then create a few categorie in  our database
        factory(App\Models\Slide::class,5)->create();
    }
}
