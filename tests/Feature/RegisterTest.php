<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class RegisterTest extends TestCase
{
    public function testsRegistersSuccessfully()
    {
        // $this->json('POST', 'api/register')
        //     ->assertStatus(422)
        //     ->assertJson([
        //         'username' => ['Le champ username est obligatoire.'],
        //         'email' => ['Le champ emial est obligatoire.'],
        //         'password' => ['Le champ mot de passe est obligatoire.'],
        //         'password_confirmation' => ['Le champ  de confirmation de mot de passe est obligatoire.'],
        //     ]);

            $payload = [
                'username' => 'Johntest',
                'email' => 'johntest@toptal.com',
                'password' => 'secret22',
                'password_confirmation' => 'secret22',
            ];


            $this->json('post', '/api/register', $payload)
            ->assertStatus(201)
            ->assertJsonStructure([
                'data' => [
                    'id',
                    'name',
                    'email',
                    'created_at',
                    'updated_at',
                    'api_token',
                ],
            ]);;

    }


    public function testsRequiresPasswordEmailAndUsername()
    {
        $this->json('post', '/api/register')
            ->assertStatus(422)
            ->assertJson([
                'username' => ['Le champ username est obligatoire.'],
                'email' => ['Le champ emial est obligatoire.'],
                'password' => ['Le champ mot de passe est obligatoire.'],
            ]);
    }

    public function testsRequirePasswordConfirmation()
    {
        $payload = [
            'username' => 'Johntest',
            'email' => 'johntest@toptal.com',
            'password' => 'secret22',
        ];

        $this->json('post', '/api/register', $payload)
            ->assertStatus(422)
            ->assertJson([
                'password' => ['Le mot de passe de confirmation n\'est pas donné.'],
            ]);
    }

}
