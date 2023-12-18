<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class CommentController extends Controller
{
    public function admin_add_comment(Request $request)
    {
        if ($request->bearerToken()) {
            $flag = Http::withToken($request->bearerToken())->post(env('CRM_USER_API', '') . '/check-if-token-exists');
            $flag_receive = $flag['data'];
            if ($flag_receive == 1) {
                $data = Comment::create([
                    'user_id' => $request->user_id,
                    'user_name' => $request->user_name,
                    'comments' => $request->comments,
                    'file_id' => $request->file_id
                ]);

                if ($data) {
                    return response()->json([
                        'message' => 'Commented',
                        'status' => 201,
                        'data' => $data
                    ], 201);
                } else {
                    return response()->json([
                        'message' => 'failed',
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

    public function agency_add_comment(Request $request)
    {
        if ($request->bearerToken()) {
            $flag = Http::withToken($request->bearerToken())->post(env('CRM_USER_API', '') . '/check-if-token-exists');
            $flag_receive = $flag['data'];
            if ($flag_receive == 1) {
                $data = Comment::create([
                    'user_id' => $request->user_id,
                    'user_name' => $request->user_name,
                    'comments' => $request->comments,
                    'file_id' => $request->file_id
                ]);

                if ($data) {
                    return response()->json([
                        'message' => 'Commented',
                        'status' => 201,
                        'data' => $data
                    ], 201);
                } else {
                    return response()->json([
                        'message' => 'failed',
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

    public function get_comment(Request $request, $file_id)
    {
        $comments = Comment::where('file_id', $request->file_id)->get();
        if ($comments) {
            return response()->json([
                'message' => 'success',
                'status' => 200,
                'data' => $comments
            ], 200);
        } else {
            return response()->json([
                'message' => 'failed',
                'status' => 500
            ], 500);
        }
    }
}
