<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;

class NotifController extends Controller
{
    //
    public function index(){
		return view('notifikasi');
    }
    
    public function sukses(){

        Session::flash('sukses', 'Notifikasi Sukses !!!');
        return redirect('pesan');
    }

    public function peringatan(){

        Session::flash('peringatan', 'Notifikasi Peringatan !!!');
        return redirect('pesan');
    }

    public function gagal(){

        Session::flash('gagal', 'Notifikasi Gagal !!!');
        return redirect('pesan');
    }
}
