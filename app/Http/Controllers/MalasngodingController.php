<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Mail\FaisalPrakerinEmail;
use Illuminate\Support\Facades\Mail;

class MalasngodingController extends Controller
{
    //
    public function index($nama){
		if($nama == "malasngoding"){
			return abort(403,'Anda tidak punya akses karena anda Malas Ngoding');
		}elseif($nama == "faisal"){
			return "Halo, ".$nama;
		}else{
			return abort(404);
		}
    }
    
    public function kirimEmail(){

        Mail::to("testing@faisalprakerin.com")->send(new FaisalPrakerinEmail());
 
		return "Email telah dikirim";
    }
}
