<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Crypt;

use Illuminate\Support\Facades\Hash;

class DikiController extends Controller
{
    //
    public function enkripsi(){

        $encrypted = Crypt::encryptString('Belajar Laravel');
        $decrypted = Crypt::decryptString($encrypted);

        echo "Hasil Enkripsi : " . $encrypted;
		echo "<br/>";
		echo "<br/>";
		echo "Hasil Dekripsi : " . $decrypted;
    }

    public function data(){
        
        $parameter = [
            'nama' => 'Faisal Adi Prayugo',
            'pekerjaan' => 'Programmer'
        ];
        $enkripsi = Crypt::encrypt($parameter);
        echo "<a href='/data/".$enkripsi."'>Klik</a>";
    }

    public function data_proses($data){
		$data = Crypt::decrypt($data);
 
		echo "Nama : " . $data['nama'];
		echo "<br/>";
		echo "Pekerjaan : " . $data['pekerjaan'];
    }

    public function hash(){

        $hashh = "Faisal Prakerin";
        $hash = Hash::make($hashh);
        echo "Hash dari => ".$hashh;
        echo "<br>";
        echo $hash;
    }
}