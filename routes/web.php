<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Auth::routes(['verify' => true]);


Route::get('/enkripsi', 'DikiController@enkripsi');

Route::get('/data/', 'DikiController@data');
Route::get('/data/{data_rahasia}', 'DikiController@data_proses');

Route::get('/hash', 'DikiController@hash');

Route::get('/upload', 'UploadController@upload');
Route::post('/upload/proses', 'UploadController@proses_upload');

Route::get('/upload/hapus/{id}', 'UploadController@hapus');

Route::get('/session/tampil', 'TesController@tampilkanSession');
Route::get('/session/buat', 'TesController@buatSession');
Route::get('/session/hapus', 'TesController@hapusSession');

Route::get('/pesan', 'NotifController@index');
Route::get('/pesan/sukses', 'NotifController@sukses');
Route::get('/pesan/peringatan', 'NotifController@peringatan');
Route::get('/pesan/gagal', 'NotifController@gagal');


Route::get('/malasngoding/{nama}','MalasngodingController@index');


Route::get('/kirimemail', 'MalasngodingController@kirimEmail');

Route::get('/pegawai', 'PegawaiController@index');
Route::get('/pegawai/cetak_pdf', 'PegawaiController@cetakPDF');

Route::get('/siswa', 'SiswaController@index');
Route::get('/siswa/export_excel', 'SiswaController@exportExcel');
Route::post('/siswa/import_excel', 'SiswaController@importExcel');

// localization pilih bahasa
Route::get('/{locale}/form', function ($locale) {
    App::setLocale($locale);
    return view('biodata');
});

Route::get('/halo/{nama}', 'HaloController@halo');
Route::get('halo', 'HaloController@panggil');