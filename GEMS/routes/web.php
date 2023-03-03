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

// Goes to Main page
Route::get('/', function () {
    return view('main');
})->name('Home');

//Goes to EMS Region page
Route::get('/Regions', function () {
    return view('EMS-Region');
})->name('Regions');

//Goes to EMS Accomodation page
Route::get('/Accommodations', function () {
    return view('EMS-accommodations');
})->name('Accommodations');

//Goes to RA Accomodation page
Route::get('/RA-Accommodations', function () {
    return view('RA-accommodations');
})->name('RA-Accommodations');

//Goes to RA and Admin Login Page
Route::get('/Log-In', function () {
    return view('Log-In');
})->name('Log-In');

//Goes to Create Accomodaton page for RA
//Only RA will be able to make accomodation
Route::get('/New-Accommodation-RA', function () {
    return view('RA-New-Accommodation');
})->name('New-Accommodation-RA');

//EMS View for detailed view of accomodations
Route::get('/view-accommodation', function () {
    return view('EMS-accommodation-view');
})->name('view-accommodation');

//Goes to detailed view for a single Accomodation
Route::get('/view-accommodationRA', function () {
    return view('RA-accommodation-view');
})->name('view-accommodationRA');

//Goes to RA page for updating Accomodations
Route::get('/Update', function () {
    return view('RA-accommodations-update');
})->name('Update-Accommodation');

//Goes to view for EMS LEI page
Route::get('/EMS-LEI', function () {
    return view('EMS-LEI');
})->name('EMS-LEI');

//Goes to EMS Contact View
Route::get('/Contact', function () {
    return view('Contact');
})->name('Contact');

//Goes to RA Contact page.
Route::get('/RA-Contact', function () {
    return view('RA-Contact');
})->name('RA-Contact');

//Goes to Creating Account for Admin
Route::get('/Create-Account', function () {
    return view('Create-Account');
})->name('Create-Account');

//Goes to Account Creation Confirmation page.
Route::get('/Account-Created', function () {
    return view('Account-Created');
})->name('Account-Created');

//Goes to Public(EMS) facing booking page.
Route::get('/Booking', function () {
    return view('Booking');
})->name('Booking');

//Goes to RA Booking page.
Route::get('/RA-Booking', function () {
    return view('RA-Booking');
})->name('RA-Booking');

//Goes to page to confirm booking page.
Route::get('/Booking-Submitted', function () {
    return view('Booking-Submitted');
})->name('Booking-Submitted');

//Goes to page to confrim to RA that Booking is complete
Route::get('/RA_Booking-Submitted', function () {
    return view('RA_Booking-Submitted');
})->name('RA_Booking-Submitted');

//Goes to Admin page to create accounts
Route::post("/Create-Account",[Controller::class,'getAccInfo']);//route for create account page to submit form and get ID
Route::view("Registered","/Create-Account");

//Goes to RA Region view.
Route::get('/RA_region', function () {
    return view('RA_region');
})->name('RA_region');

//Goes to RA Region create page
Route::get('/RA_region_create', function () {
    return view('RA_region_create');
})->name('RA_region_create');

//RA-Main page
Route::get('/main-RA', function () {
    return view('main-RA');
})->name('main-RA');

//RA View for LEI
Route::get('/RA-LEI', function () {
    return view('RA-LEI');
})->name('RA-LEI');

//RA Create LEI Region selection page.
Route::get('/RA-LEI-Create-Region', function () {
    return view('RA-LEI-Create-Region');
})->name('RA-LEI-Create-Region');

//Goes to Waiting List Page
Route::get('/WaitingList', function () {
    return view('WaitingList');
})->name('WaitingList');

//goes to Confriming/deny public requests.
Route::get('/Bookings', function () {
    return view('Bookings');
})->name('Bookings');

//Goes to RA Delete Accomodation
Route::get('/DeleteAcc', function () {
    return view('RA-DeleteAcc');
})->name('DeleteAcc');

//Goes to RA Create LEI Information page
Route::get('/RA-LEI-Create-Info', function () {
    return view('RA-LEI-Create-Info');
})->name('RA-LEI-Create-Info');

//Goes to delete booking for accomodation 
Route::get('/DeleteBooking', function () {
    return view('DeleteBooking');
})->name('DeleteBooking');

//Goes to update LEI Page
Route::get('/Update-LEI-RA', function () {
    return view('Update-LEI-RA');
})->name('Update-LEI-RA');

//Goes to create Admin Main Page.
Route::get('/Admin-main', function () {
    return view('Admin-main');
})->name('Admin-main');

//Goes to RA Delete LEI page.
Route::get('/RA-DeleteLEI', function () {
    return view('RA-DeleteLEI');
})->name('RA-DeleteLEI');
