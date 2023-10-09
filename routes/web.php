<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\JobController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::patch('/update-job/{id}', [JobController::class, 'update'])->name('job.update');
Route::post('/add-partnumber', [JobController::class, 'pnStore'])->name('pn.create');
Route::post('/add-customer', [JobController::class, 'customerStore'])->name('customer.create');
Route::post('/add-job', [JobController::class, 'store'])->name('add-job.create');
Route::get('/add-job', [JobController::class, 'create'])->name('add-job');

Route::get('/', [JobController::class, 'view'])->name('welcome');

// Route::get('/', function () {
//     return view('welcome');
// });

