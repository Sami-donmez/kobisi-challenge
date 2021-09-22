<?php

namespace Database\Factories;

use App\Models\Company;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;

class CompanyFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Company::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            "name" => $this->faker->name(),
            "surname" => $this->faker->lastName(),
            "email" => $this->faker->safeEmail,
            'password'=> Hash::make($this->faker->password()),
            'site_url'=> $this->faker->url(),
            'company_name'=> $this->faker->company(),
            'access_token' => "",
            'status'=> 1

        ];
    }
}
