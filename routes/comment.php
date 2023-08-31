<?php

use App\Http\Controllers\AccountantController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\AgencyController;
use App\Http\Controllers\CommentController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::post('/add-comment-by-admin',[CommentController::class, 'admin_add_comment']);
Route::post('/reply-comment-by-agency', [CommentController::class, 'agency_add_comment']);
Route::get('/file_id={file_id}/get-comments', [CommentController::class, 'get_comment']);