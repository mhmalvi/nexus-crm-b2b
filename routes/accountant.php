<?php

use App\Http\Controllers\AccountantController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::post('/file-name-and-variable', [AccountantController::class, 'course_file_upload']);
Route::get('/get-payment-slip-lists', [AccountantController::class, 'payment_slip_lists']);
