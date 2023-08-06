<?php

use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::post('/agency-register',[UserController::class, 'signup']);
Route::post('/agency-login', [UserController::class, 'user_login']);
Route::get('/agency-logout', [UserController::class, 'logout']);