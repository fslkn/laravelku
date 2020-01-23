<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class PegawaiEloquentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $faker = Faker::create('id_ID');
 
    	for($i = 1; $i <= 20; $i++){
 
    	      // insert data ke table pegawai menggunakan Faker
    		DB::table('pegawai_eloquent')->insert([
    			'nama' => $faker->name,
    			'email' => $faker->email,
    			'alamat' => $faker->address,
    			'telepon' => $faker->phoneNumber,
    			'pekerjaan' => 'karyawan'
    		]);
    }
}
}