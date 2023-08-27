<?php

use App\Http\Controllers\AccountantController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::post('/course-upload',[AccountantController::class, 'course_upload']);