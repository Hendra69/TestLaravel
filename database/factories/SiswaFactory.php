<?php

namespace Database\Factories;
use App\Models\Siswa;
use Illuminate\Database\Eloquent\Factories\Factory;

class SiswaFactory extends Factory
{
    protected $model = Siswa::class;
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'nama' => $this->faker->name(),
            'nilai' => $this->faker->number(),
            'kota' => $this->faker->city(),
            'kab' => $this->faker->kabupaten(),
            'jk' => $this->faker->jeniskelamin(),
        ];
    }
}
