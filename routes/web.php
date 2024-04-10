<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MediaController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\HistoryController;
use App\Http\Controllers\ArtController;
use App\Http\Controllers\CivilizationController;
use App\Http\Controllers\SiteConfigController;
use App\Http\Controllers\ContactController;

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
})->middleware(['auth'])->name('dashboard');
Route::get('/dashboard', function () {
    return view('welcome');

})->middleware(['auth'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::prefix('dashboard')->group(function() {
        Route::resource('media', MediaController::class);
        Route::resource('user', UserController::class);
        Route::resource('art', ArtController::class);
        Route::resource('contact', ContactController::class);
        Route::resource('history', HistoryController::class);
        Route::resource('civilization', CivilizationController::class);
        Route::get('site_config', [SiteConfigController::class,'index']);
        Route::post('site_update', [SiteConfigController::class,'siteUpdate']);

        Route::get('/ajaxRemove', [DashboardController::class, 'ajaxRemove']);
    });
});



require __DIR__.'/auth.php';
