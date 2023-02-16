<?php

use Illuminate\Database\Seeder;

use App\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        Static $password;
        //Let's truncate our last records
        User::truncate();

        $faker = \Faker\Factory::create();

        //Then create a few users in  our database
        for ($i=0; $i <10 ; $i++) { 
            
            User::create(  [
                'email' => preg_replace('/@example\..*/', '@domain.com', $faker->unique()->safeEmail),
                'password' => $password ?: $password = bcrypt('secret'),
                'first_name' => $faker->firstName(),
                'last_name' => $faker->lastName(),
                'username'  => $faker->firstName(),
                'avatar_id'  => $faker->randomFloat(1,10)
            ]);
        }
    }
}
