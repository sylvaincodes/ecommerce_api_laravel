<?php

use Illuminate\Database\Seeder;
use App\Models\Product;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
     //Let's truncate our last records
     Product::truncate();

     //Then create a few categorie in  our database
     factory(App\Models\Product::class,15)->create();
    }
}
