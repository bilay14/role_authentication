<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;

class userSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        DB::table('users')->insert([
            [
                'name'=>'Admin',
                'email'=>'admin@email.com',
                'password' => bcrypt('12345'),
                'role'=>'admin'

            ],
            [
                'name'=>'Vendor',
                'email'=>'vendor@email.com',
                'password' => bcrypt('12345'),
                'role'=>'vendor'

            ],
            [
                'name'=>'Customer',
                'email'=>'customer@email.com',
                'password' => bcrypt('12345'),
                'role'=>'customer'

            ]
            ]);
    }
}
