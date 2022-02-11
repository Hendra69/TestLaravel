<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;
class SiswaSeender extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
  
    {
        $faker = Faker::create('id_ID');
        for($i=1; $i <=100; $i++)
        {
            $jk = $faker->randomElement($array = array('male','female',));
            DB::table('siswas')->insert([
                'nama' =>  $faker -> name,
                'nilai'=>  $faker -> numberBetween,
                'asal' =>  $faker -> company,
                'kota' =>  $faker -> city,
                'kab'  =>  $faker -> city,
                'jk'   =>  $jk,
               
                
            ]);
        }
        
    }
}
