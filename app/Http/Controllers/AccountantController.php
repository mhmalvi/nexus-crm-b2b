<?php

namespace App\Http\Controllers;

use App\Models\Student;
use App\Models\Accountant;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

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

    /////////////////Approve or Disapprove pay slip////////////////////
    public function pay_slip_status_change(Request $request)
    {
        if ($request->bearerToken()) {
            $flag = Http::withToken($request->bearerToken())->post('https://crmuser.quadque.digital/api/check-if-token-exists');
            $flag_receive = $flag['data'];
            if ($flag_receive == 1) {
                $student = Student::find($request->student_id);
                $student->pay_slip_status = $request->status;
                $update = $student->save();
                if ($update) {
                    return response()->json([
                        'message'    => 'Status changed',
                        'status' => 201,
                        'data' => $update
                    ], 201);
                } else {
                    return response()->json([
                        'message'    => 'Failed',
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
