<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SiswaController;
use Hexters\Ladmin\Routes\Ladmin;
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
    return view('auth/login');
});

Auth::routes();
Route::get('/home', [App\Http\Controllers\SiswaController::class, 'index'])->name('siswa');



Route::group(["prefix" => "siswa", "middleware" => ['auth']], function () {
    Route::any('/', [\App\Http\Controllers\SiswaController::class, 'index'])->name('siswa');
    Route::resource('siswa',SiswaController::class);
    Route::get('/siswa', [App\Http\Controllers\SiswaController::class, 'index'])->name('siswa');
    Route::get('test/create',[App\Http\Controllers\SiswaController::class,'create']);
    Route::post('test/create',[App\Http\Controllers\SiswaController::class,'store']);
});

