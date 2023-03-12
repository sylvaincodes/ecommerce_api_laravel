<?php

use Illuminate\Database\Seeder;

class ReviewsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //Let's truncate our last records
     App\Models\Review::truncate();

     //Then create a few categorie in  our database
     factory(App\Models\Review::class,5)->create();
    }
}

