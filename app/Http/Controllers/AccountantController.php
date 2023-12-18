<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Accountant;
use App\Models\Student;
use Carbon\Carbon;
use Illuminate\Support\Facades\Http;
use DB;

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
            $flag = Http::withToken($request->bearerToken())->post(env('CRM_USER_API', '') . '/check-if-token-exists');
            $flag_receive = $flag['data'];
            if ($flag_receive == 1) {
                $slip = Student::where('status', 1)->where(function ($query) {
                    $query->where('pay_slip_status', 0)->orWhere('pay_slip_status', 1)->orWhere('pay_slip_status', 2);
                })->get();
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
            $flag = Http::withToken($request->bearerToken())->post(env('CRM_USER_API', '') . '/check-if-token-exists');
            $flag_receive = $flag['data'];
            if ($flag_receive == 1) {
                $student = Student::find($request->student_id);
                $student->pay_slip_status = $request->status;
                $update = $student->save();
                if ($update) {
                    if ($request->status == 1) {
                        return response()->json([
                            'message'    => 'Approved',
                            'status' => 201,
                            'data' => $update
                        ], 201);
                    } else if ($request->status == 2) {
                        return response()->json([
                            'message'    => 'Disapproved',
                            'status' => 201,
                            'data' => $update
                        ], 201);
                    }
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

    ///////////////////// accountant dashboard analytics //////////////////////
    public function accountant_analytics(Request $request)
    {
        // dd("hello");
        if ($request->bearerToken()) {
            $flag = Http::withToken($request->bearerToken())->post(env('CRM_USER_API', '') . '/check-if-token-exists');
            $flag_receive = $flag['data'];
            if ($flag_receive == 1) {
                $slip_approved = Student::where('pay_slip_status', 1)->count();
                $slip_pending = Student::where('pay_slip_status', 0)->count();
                $slip_rejected = Student::where('pay_slip_status', 2)->count();
                $total_student = Student::count();
                return response()->json([
                    'message' => 'success',
                    'status' => 200,
                    'data' => ['slip_approved' => $slip_approved, 'slip_pending' => $slip_pending, 'slip_rejected' => $slip_rejected, 'total_student' => $total_student]
                ]);
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


    /////////////////////////// accountant dashboard graph /////////////////////////
    public function accountant_current_year_dashboard_data(Request $request)
    {
        $curr_year = Carbon::now()->format('Y');
        // dd($curr_year);
        $data = Student::select(DB::raw("(COUNT(*)) as count"), DB::raw("MONTHNAME(created_at) as monthname"))->where('pay_slip_status', 1)->whereYear('created_at', date('Y', strtotime('0 year')))->groupBy('monthname')->get();

        // dd(json_decode($data));
        // $student = [];
        // foreach($data as $data){
        //     // dd($data->count);
        //     array_push($student,$data->count/100);
        // }
        if ($data) {
            return response()->json([
                'message'    => 'success',
                'status' => 200,
                'data' => $data
            ], 200);
        } else {
            return response()->json([
                'message'    => 'failed',
                'status' => 500
            ], 500);
        }
    }
}
