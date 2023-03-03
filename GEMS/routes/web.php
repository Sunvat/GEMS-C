<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Controller;
use App\Http\Controllers\UserController;

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
    return view('EMS-Region');
})->name('Regions');

Route::get('/Accommodations', function () {
    return view('EMS-accommodations');
})->name('Accommodations');

Route::get('/RA-Accommodations', function () {
    return view('RA-accommodations');
})->name('RA-Accommodations');

Route::post('/Login', function () {
    return view('Login');
})->name('Login');

Route::get('/New-Accommodation-RA', function () {
    return view('RA-New-Accommodation');
})->name('New-Accommodation-RA');

Route::get('/view-accommodation', function () {
    return view('EMS-accommodation-view');
})->name('view-accommodation');

Route::get('/view-accommodationRA', function () {
    return view('RA-accommodation-view');
})->name('view-accommodationRA');

Route::get('/Update', function () {
    return view('RA-accommodations-update');
})->name('Update-Accommodation');

Route::get('/EMS-LEI', function () {
    return view('EMS-LEI');
})->name('EMS-LEI');

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

Route::get('/RA-Booking', function () {
    return view('RA-Booking');
})->name('RA-Booking');

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

Route::get('/RA-LEI', function () {
    return view('RA-LEI');
})->name('RA-LEI');

Route::get('/RA-LEI-Create-Region', function () {
    return view('RA-LEI-Create-Region');
})->name('RA-LEI-Create-Region');

Route::get('/WaitingList', function () {
    return view('WaitingList');
})->name('WaitingList');

Route::get('/RA-Bookings', function () {
    return view('RA-Bookings');
})->name('RA-Bookings');

Route::get('/DeleteAcc', function () {
    return view('RA-DeleteAcc');
})->name('DeleteAcc');

Route::get('/RA-LEI-Create-Info', function () {
    return view('RA-LEI-Create-Info');
})->name('RA-LEI-Create-Info');

Route::get('/RA-declineBooking', function () {
    return view('RA-declineBooking');
})->name('RA-declineBooking');

Route::get('/RA-ApproveBooking', function () {
    return view('RA-ApproveBooking');
})->name('RA-ApproveBooking');

Route::get('/Update-LEI-RA', function () {
    return view('Update-LEI-RA');
})->name('Update-LEI-RA');

Route::get('/Admin-main', function () {
    return view('Admin-main');
})->name('Admin-main');

Route::get('/RA-DeleteLEI', function () {
    return view('RA-DeleteLEI');
})->name('RA-DeleteLEI');

Route::post('/authenticate', function () {
    return view('authenticate');
})->name('authenticate');


Route::post("authenticate",[UserController::class,"auth"]);