<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Controller;

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

Route::get('/RA-Accommodations', function () {
    return view('accommodationsRA');
})->name('RA-Accommodations');

Route::get('/Log-In', function () {
    return view('Log-In');
})->name('Log-In');

Route::get('/New', function () {
    return view('create-accommodation');
})->name('New-Accommodations');

Route::get('/View-Accommodation', function () {
    return view('view-accommodation');
})->name('View-Accommodation');

Route::get('/View-Accommodation-RA', function () {
    return view('view-accommodationRA');
})->name('View-Accommodation-RA');

Route::get('/Update', function () {
    return view('update-accommodations');
})->name('Update-Accommodation');

Route::get('/Current-Evacuation-Plans', function () {
    return view('Current-Evacuation-Plans');
})->name('Current-Evacuation-Plans');

Route::get('/Latest-Emergency-Updates', function () {
    return view('Latest-Emergency-Updates');
})->name('Latest-Emergency-Updates');

Route::get('/Contact', function () {
    return view('Contact');
})->name('Contact');

Route::get('/Create-Account', function () {
    return view('Create-Account');
})->name('Create-Account');

Route::get('/Booking', function () {
    return view('Booking');
})->name('Booking');

Route::get('/Registered', function () {
    return view('Registered');
})->name('Registered');

Route::post("/Create-Account",[Controller::class,'getAccInfo']);//route for create account page to submit form and get ID
Route::view("Registered","/Create-Account");

Route::get('/RA_region', function () {
    return view('RA_region');
})->name('RA_region');

Route::get('/RA_region_create', function () {
    return view('RA_region_create');
})->name('RA_region_create');