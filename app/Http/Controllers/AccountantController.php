<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Accountant;
use App\Models\Student;

class AccountantController extends Controller
{
    public function course_file_upload(Request $request)
    {
        $accountant = new Accountant();

        $accountant->course_id = $request->course_id;
        $accountant->accountant_id = $request->user_id;
        $accountant->file_name = $request->name;
        $accountant->save();
    }


    public function payment_slip_lists(Request $request)
    {
        if ($request->bearerToken()) {
            $flag = Http::withToken($request->bearerToken())->post('https://crmuser.quadque.digital/api/check-if-token-exists');
            $flag_receive = $flag['data'];
            if ($flag_receive == 1) {
                $slip = Student::all();
                if ($slip) {
                    return response()->json([
                        'message'    => 'success',
                        'status' => 200,
                        'data' => $slip
                    ], 200);
                } else {
                    return response()->json([
                        'message'    => 'failed',
                        'status' => 500
                    ], 500);
                }
            } else {
                return response()->json([
                    'message' => 'Unauthenticated',
                    'status' => 401
                ], 401);
            }
        } else {
            return response()->json([
                'message' => 'Unauthenticated',
                'status' => 401
            ], 401);
        }
    }
}
