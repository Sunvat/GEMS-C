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

Route::get('/Regions', function () {
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

Route::get('/Accommodation_Created', function () {
    return view('Accommodation_Created');
})->name('Accommodation_Created');

Route::get('/New-Accommodation-RA', function () {
    return view('New-Accommodation-RA');
})->name('New-Accommodation-RA');

Route::get('/view-accommodation', function () {
    return view('view-accommodation');
})->name('view-accommodation');

Route::get('/Accommodation_update_submitted', function () {
    return view('Accommodation_update_submitted');
})->name('Accommodation_update_submitted');

Route::get('/view-accommodationRA', function () {
    return view('view-accommodationRA');
})->name('view-accommodationRA');

Route::get('/Update', function () {
    return view('update-accommodations');
})->name('Update-Accommodation');

Route::get('/Latest-Emergency-Updates', function () {
    return view('Latest-Emergency-Updates');
})->name('Latest-Emergency-Updates');

Route::get('/Contact', function () {
    return view('Contact');
})->name('Contact');

Route::get('/RA-Contact', function () {
    return view('RA-Contact');
})->name('RA-Contact');

Route::get('/Create-Account', function () {
    return view('Create-Account');
})->name('Create-Account');

Route::get('/Account-Created', function () {
    return view('Account-Created');
})->name('Account-Created');

Route::get('/Booking', function () {
    return view('Booking');
})->name('Booking');

Route::get('/RA_Booking', function () {
    return view('RA_Booking');
})->name('RA_Booking');

Route::get('/Booking-Submitted', function () {
    return view('Booking-Submitted');
})->name('Booking-Submitted');

Route::get('/RA_Booking-Submitted', function () {
    return view('RA_Booking-Submitted');
})->name('RA_Booking-Submitted');

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

Route::get('/Region-Created', function () {
    return view('Region-Created');
})->name('Region-Created');

Route::get('/main-RA', function () {
    return view('main-RA');
})->name('main-RA');

Route::get('/RA-Latest-Update', function () {
    return view('RA-Latest-Update');
})->name('RA-Latest-Update');

Route::get('/RA-Create-Update', function () {
    return view('RA-Create-Update');
})->name('RA-Create-Update');

Route::get('/WaitingList', function () {
    return view('WaitingList');
})->name('WaitingList');

Route::get('/Bookings', function () {
    return view('Bookings');
})->name('Bookings');

Route::get('/DeleteAcc', function () {
    return view('DeleteAcc');
})->name('DeleteAcc');

Route::get('/LEI-Create-RA', function () {
    return view('LEI-Create-RA');
})->name('LEI-Create-RA');

Route::get('/Update-LEI-RA', function () {
    return view('Update-LEI-RA');
})->name('Update-LEI-RA');
