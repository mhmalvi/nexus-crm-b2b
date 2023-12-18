<?php

use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;



Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/agency-register', [UserController::class, 'signup']);
Route::post('/agency-login', [UserController::class, 'user_login']);
Route::get('/agency-logout', [UserController::class, 'logout']);
Route::get('/company_id={company_id}/role={role}/status={status}/fetch-user',[UserController::class,'fetch_user']);
Route::post('/company_id={company_id}/user_id={user_id}/status={status}/suspend-user',[UserController::class,'suspend_user']);