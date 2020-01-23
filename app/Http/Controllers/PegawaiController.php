<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Pegawai;
use PDF;

class PegawaiController extends Controller
{
    //
    public function index()
    {
        # code...
        $pegawai = Pegawai::all();
        return view('pegawai', ['pegawai'=>$pegawai]);
    }

    public function cetakPDF(){

        $pegawai = Pegawai::all();

        $pdf = PDF::loadview('pegawai_pdf', ['pegawai' => $pegawai]);
        return $pdf->stream();
    }
}