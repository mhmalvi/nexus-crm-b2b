<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Services\UserService;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    private $userService;

    function __construct()
    {
    }
    public function signup(Request $request)
    {
        $user = new User();
        if ($request->role === 1) {    //////////// for agency signup
            $user->email = $request->email;
            $user->agency_name = $request->name;
            $user->abn_number = $request->abn_number;
            $user->role = 1;
            $user->address = $request->address;
            $user->password = Hash::make($request->password);
            $signup = $user->save();
            if ($signup) {
                return response()->json([
                    'message' => 'Signup successful',
                    'status' => 201,
                ], 201);
            } else {
                return response()->json([
                    'message' => 'Signup failed',
                    'status' => 500,
                ], 500);
            }
        } else if ($request->role === 2) {     /////// for manager signup
            $user->manager_name = $request->name;
            $user->phone_number = $request->phone_number;
            $user->email = $request->email;
            $user->password = Hash::make($request->password);
            $user->role = 2;
            $signup = $user->save();
            if ($signup) {
                return response()->json([
                    'message' => 'Wait for admin approval',
                    'status' => 201,
                ], 201);
            } else {
                return response()->json([
                    'message' => 'Signup failed',
                    'status' => 500,
                ], 500);
            }
        }
    }
    // public function demo(){
    //     dd("dfvdsfgdsfgs");
    // }

    public function user_login(Request $request)         ////////////////  login  ////////////////
    {
        if ($request->role == 1) {
            $user = User::where('abn_number', '=', $request->abn_number)->where('role', '=', $request->role)->first();
            // if (!Auth::attempt(['abn_number'=>$request->abn_number, 'password'=>$request->password, 'role'=>1])) {
            if (!$user || !Hash::check($request->password, $user->password)) {
                return response()->json([
                    'message' => 'Wrong ABN number or password',
                    'status' => '500'
                ], 500);
            } else {
                $email = $user->email;
                $agency_name = $user->agency_name;
                $abn_number = $user->abn_number;
                $phone_number = $user->phone_number;
                $address = $user->address;

                // dd($address);
                // $user = User::where('abn_number', $request->abn_number)->first();
                $token = $user->createToken('API_TOKEN')->plainTextToken;
                if ($token) {
                    return response()->json([
                        'message' => 'Login successful',
                        'status' => '200',
                        'token' => $token,
                        'data' => [
                            'email' => $email, 'agency_name' => $agency_name, 'abn_number' => $abn_number, 'phone' => $phone_number, 'address' => $address
                        ]
                    ], 200);
                } else {
                    return response()->json([
                        'message' => 'Login failed',
                        'status' => '500',
                    ]);
                }
            }
        } else if ($request->role == 2) {
        }
    }

    public function logout(Request $request)        /////////////////////  logout   ////////////////////
    {
        // $logout = Auth::user()->tokens->delete();
        $logout = auth('sanctum')->user()->tokens()->delete();
        if ($logout == 1) {
            return response()->json([
                'message' => 'logged out',
                'status' => 200
            ], 200);
        } else {
            return response()->json([
                'message' => 'token does not exist',
                'status' => 404
            ], 404);
        }
    }
}
