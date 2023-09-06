<?php

use App\Http\Controllers\AccountantController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::post('/file-name-and-variable', [AccountantController::class, 'course_file_upload']);
Route::get('/get-payment-slip-lists', [AccountantController::class, 'payment_slip_lists']);
Route::post('/pay-slip-status-change', [AccountantController::class, 'pay_slip_status_change']);
Route::get('/get-accountant-dashboard-analytics', [AccountantController::class, 'accountant_analytics']);
Route::get('/accountant-current-year-dashboard-data', [AccountantController::class, 'accountant_current_year_dashboard_data']);