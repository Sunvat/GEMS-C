<?php

use Illuminate\Support\Facades\Route;

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
    return view('main');
})->name('Home');

Route::get('/Countries', function () {
    return view('regions-countries');
})->name('Regions');

Route::get('/Accommodations', function () {
    return view('accommodations');
})->name('Accommodations');

Route::get('/Log-In', function () {
    return view('Log-In');
})->name('Log-In');

Route::get('/New', function () {
    return view('create-accommodation');
})->name('New-Accommodations');

Route::get('/View-Accommodation', function () {
    return view('view-accommodation');
})->name('View-Accommodation');

Route::get('/Update', function () {
    return view('update-accommodations');
})->name('Update-Accommodation');