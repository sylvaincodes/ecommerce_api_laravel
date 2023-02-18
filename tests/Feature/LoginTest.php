<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\User;
use Illuminate\Foundation\Testing\WithoutMiddleware;

class LoginTest extends TestCase
{

    // use WithoutMiddleware; // use this trait

    public function testUserLoginsSuccessfully()
    {
        
        $user = factory(User::class)->create([
            'email' => 'trystan61@domain.com',
            'password' => bcrypt('secret22'),
        ]);
        
        $payload = ['email' => 'trystan61@domain.com', 'password' => 'secret22'];

        $this->json('POST', 'api/login', $payload)
            ->assertStatus(200)
            ->assertJsonStructure([
                'data' => [
                    'id',
                    'username',
                    'email',
                    'created_at',
                    'updated_at',
                    'api_token',
                ],
            ])
            ;

    }
}
