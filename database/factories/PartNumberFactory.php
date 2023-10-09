<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\PartNumber;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\PartNumber>
 */
class PartNumberFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'part_number' => $this->faker->randomNumber(5),
            'description' => $this->faker->sentence(45),
        ];
    }
}
