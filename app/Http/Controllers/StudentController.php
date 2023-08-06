<?php

namespace App\Http\Controllers;

use App\Models\File;
use App\Models\Student;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    public function save(Request $request)
    {
        // dd($request->all());
        $student = new Student();
        $student->student_name = $request->student_name;
        $student->course_name = $request->course_name;
        $student->user_id = $request->user_id;
        $student->save();
        if ($request->student_file) {
            $data = array();

            foreach ($request->student_file as $files) {
                $fileName = $files->getClientOriginalName();
                $checklist_exist = File::where('file_name', $fileName)->exists();
                if (!$checklist_exist) {
                    $path = $files->store('assets/student_files', ['disk' =>   'student_files']);
                    $save = File::create([
                        'file_path' => $path,
                        'file_name' => $fileName,
                        'student_id' => $student->id
                    ]);
                    $path = "";
                } else {
                    return response()->json([
                        'message' => 'File already exists',
                        'status' => 409
                    ], 409);
                }
            }
            if ($save) {
                return response()->json([
                    'message'    => 'Uploaded successfully',
                    'status' => 201,
                    'data' => ['student' => $student]
                ], 201);
            }
        } else {
            return response()->json([
                'message' => 'Please select a file',
                'status' => 404
            ], 404);
        }
    }

    public function get_student_lists()
    {
        $student = Student::with('files')->get();
        // dd($student);
        if ($student) {
            return response()->json([
                'message' => 'success',
                'status' => 200,
                'data' => $student
            ], 200);
        } else {
            return response()->json([
                'message' => 'failed',
                'status' => 500
            ], 500);
        }
    }

    public function get_student_details($id)
    {
        $files = Student::where('id', $id)->with('files')->first();
        // dd($student);
        if ($files) {
            return response()->json([
                'message' => 'success',
                'status' => 200,
                'data' => $files
            ], 200);
        } else {
            return response()->json([
                'message' => 'failed',
                'status' => 500
            ], 500);
        }
    }

    public function change_status(Request $request)
    {
        // dd($request->all());
        $file = File::where('student_id', $request->student_id)->where('id', $request->file_id)->first();
        if ($file) {
            $file->status = $request->status;
            $save = $file->save();
            $student = Student::find($request->student_id);
            $files = File::where('student_id', $request->student_id)->get();
            foreach ($files as $docs) {
                if ($docs->status == 1 && $docs->status != 0 && $docs->status != 2) {
                    $student->status = 1;
                    $student->save();
                } else if ($docs->status != 1 && $docs->status == 0 && $docs->status != 2) {
                    $student->status = 0;
                    $student->save();
                }
            }
            if ($save) {
                return response()->json([
                    'message' => 'Status changed',
                    'status' => 201
                ], 201);
            } else {
                return response()->json([
                    'message' => 'failed',
                    'status' => 500
                ], 500);
            }
        }
    }
}
