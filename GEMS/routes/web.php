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
//add new post create account 
//Route::get('Create-Account',[UserController::class,'CreateAccount']);

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

//Goes to RA Bookings page.
Route::get('/RA-Bookings', function () {
    return view('RA-Bookings');
})->name('RA-Bookings');

//Goes to EMS facing wishlist page.
Route::get('/EMS-wishlist', function () {
    return view('EMS-wishlist');
})->name('EMS-wishlist');

//Goes to EMS facing wishlist page.
Route::get('/EMS-Wish-Submitted', function () {
    return view('EMS-Wish-Submitted');
})->name('EMS-Wish-Submitted');

//Goes to RA facing wishlist page.
Route::get('/RA-wishlist', function () {
    return view('RA-wishlist');
})->name('RA-wishlist');

//Goes to RA facing wishlist page.
Route::get('/RA-Wish-Submitted', function () {
    return view('RA-Wish-Submitted');
})->name('RA-Wish-Submitted');

//Goes to page to confirm booking page.
Route::get('/Booking-Submitted', function () {
    return view('Booking-Submitted');
})->name('Booking-Submitted');

//Goes to page to confrim to RA that Booking is complete
Route::get('/RA_Booking-Submitted', function () {
    return view('RA_Booking-Submitted');
})->name('RA_Booking-Submitted');

//Region select for bookings
Route::get('/Bookings-Regions', function () {
    return view('RA_bookings_region');
})->name('Bookings-Regions');

//Goes to Admin page to create accounts
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

//Goes to RA Delete Accomodation
Route::get('/DeleteAcc', function () {
    return view('RA-DeleteAcc');
})->name('DeleteAcc');

//Goes to RA Create LEI Information page
Route::get('/RA-LEI-Create-Info', function () {
    return view('RA-LEI-Create-Info');
})->name('RA-LEI-Create-Info');

Route::get('/RA-declineBooking', function () {
    return view('RA-declineBooking');
})->name('RA-declineBooking');

Route::get('/RA-declineWish', function () {
    return view('RA-declineWish');
})->name('RA-declineWish');

Route::get('/RA-ApproveBooking', function () {
    return view('RA-ApproveBooking');
})->name('RA-ApproveBooking');

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

Route::post('/authenticate', function () {
    return view('authenticate');
})->name('authenticate');

//login rotues


Route::get('/Login', function () {
    return view('Login');
})->name('Login');

Route::post('Login',[UserController::class,'Login']);



//Route::post("authenticate",[UserController::class,"auth"]);

?>
