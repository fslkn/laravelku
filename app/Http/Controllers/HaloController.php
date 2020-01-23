<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HaloController extends Controller
{
    //

    public function halo($nama){

        return "Halo, ".$nama;
    }

    public function panggil(){

        echo "Ketik URL seperti contoh   dibawah ini :<br>";
        return action('HaloController@halo', ['nama' => 'Faisal-Prakerin']);
    }
}
