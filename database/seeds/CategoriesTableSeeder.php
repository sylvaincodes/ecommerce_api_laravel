<?php

use Illuminate\Database\Seeder;
use App\Models\Categorie;


class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //Let's truncate our last records
        Categorie::truncate();

        //Then create a few categorie in  our database
        factory(App\Models\Categorie::class,5)->create();
    }
}


