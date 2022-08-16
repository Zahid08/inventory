<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Product\ProductController;
use App\Http\Controllers\Category\CategoryController;
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

Route::post('login', [LoginController::class, 'login']);
Route::post('register', [RegisterController::class, 'register']);

// protected routes
Route::group(['middleware' => 'auth:api'], function() {
    Route::get('logout', [LoginController::class, 'logout']);
    Route::resource('products', ProductController::class);
    Route::resource('categories', CategoryController::class);
});

