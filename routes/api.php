<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\HomeController;
use App\Http\Controllers\API\AboutUsController;
use App\Http\Controllers\API\HistoryController;
use App\Http\Controllers\API\ArtController;
use App\Http\Controllers\API\CivilizationController;
use App\Http\Controllers\API\ContactController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['prefix'=>'v1', 'namespace' => 'API'], function(){
    Route::get('/', [HomeController::class,'index']);
    Route::get('/about-us', [AboutUsController::class,'index']);
    Route::get('/history', [HistoryController::class,'index']);
    Route::get('/art', [ArtController::class,'index']);
    Route::get('/civilization', [CivilizationController::class,'index']);
    Route::post('/contact/create', [ContactController::class,'create']);
});




