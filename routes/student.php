<?php

use App\Http\Controllers\StudentController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Middleware\UserMiddleware;


Route::post('/student-save', [StudentController::class, 'save'])->middleware('agency');
Route::get('/student-lists', [StudentController::class, 'get_student_lists']);
