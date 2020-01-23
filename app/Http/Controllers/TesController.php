<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TesController extends Controller
{
    //
    public function tampilkanSession(Request $request){

        if($request->session()->has('nama')){
            echo $request->session()->get('nama');
            echo '<br><a href="/session/hapus">Hapus Session</a>';

        }else{
            echo 'Tidak ada data dalam session.<br>';
            echo '<a href="/session/buat">Buat Session</a>';
        }
    }

    public function buatSession(Request $request){
        
        $request->session()->put('nama', 'Faisal Adi Prayugo');
        echo "Data telah ditambahkan ke session.<br>";
        echo "<a href='/session/tampil'>Tampilkan Session</a>";
    }

    public function hapusSession(Request $request){
        $request->session()->forget('nama');
        echo "Data telah dihapus dari session.<br>";
        echo "<a href='/session/tampil'>Tampilkan Session</a>";
    }
}
