<?php

use App\Http\Controllers\StudentController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::post('/student-save', [StudentController::class, 'save']);
Route::get('/student-lists', [StudentController::class, 'get_student_lists']);
Route::get('/student_id={id}/student-details', [StudentController::class, 'get_student_details']);
Route::post('/change-status', [StudentController::class, 'change_status']);

Route::get('/agency_id={id}/show-student-agency', [StudentController::class, 'student_show_agency']);
Route::get('/agency_id={agency_id}/student_id={id}/show-student-details-agency', [StudentController::class, 'student_show_details_agency']);

Route::get('/file_id={file_id}/delete-file-by-agency', [StudentController::class, 'delete_file_by_agency']);

Route::post('/agency_id={agency_id}/student_id={student_id}/comment', [StudentController::class, 'comment']);
