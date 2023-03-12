<?php

use Illuminate\Database\Seeder;
use App\Models\Brand;
class BrandsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       //Let's truncate our last records
       Brand::truncate();

       //Then create a few categorie in  our database
       factory(App\Models\Brand::class,5)->create();
    }
}
