<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class FaisalPrakerinEmail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from('pengirim@faisalprakerin.com')
                    ->view('emailku')
                    ->with(
                        [
                            'nama' => 'Faisal Adi Prayugo',
                            'website' => 'http://instagram.com/fslkn_/'
                        ])
                    ->attach(public_path('/data_file').'/1579667901_IMG_2602.jpg', [
                        'as' => '1579667901_IMG_2602.jpg',
                        'mime' => 'image/jpeg',
                      ]);
    }
}
