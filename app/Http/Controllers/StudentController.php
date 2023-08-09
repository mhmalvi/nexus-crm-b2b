<?php

namespace App\Http\Controllers;

use App\Models\File;
use App\Models\User;
use App\Models\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\StudentMail;
use PDF;

class StudentController extends Controller
{

    public function update_file(Request $request, $student_id)
    {
        $student = new Student();
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
                        'student_id' => $student_id
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
                ], 201);
            }
        } else {
            return response()->json([
                'message' => 'Please select a file',
                'status' => 404
            ], 404);
        }
    }
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

    public function generatePDF()
    {
        $data = [
            'title' => 'Welcome to ItSolutionStuff.com',
            'date' => date('m/d/Y')
        ];

        $pdf = PDF::loadView('myPDF', $data);

        return $pdf->download('itsolutionstuff.pdf');
    }

    public function get_student_lists()
    {
        $student = Student::with('files')->orderBy('id', 'desc')->get();
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

    public function send_mail(Request $request, $id)
    {
        $student = Student::find($id);
        $files = File::where('student_id', $id)->get();
        // dd($files);
        $file_array = [];
        foreach ($files as $file) {
            // dd($file->file_path);
            array_push($file_array, $file->file_path);
        }

        Mail::to($request->to)->queue(new StudentMail($student->student_name, $student->course_name, $file_array, $request->subject));
        return response()->json([
            'message'    => 'Mail sent',
            'status' => 200
        ]);
    }

    public function get_student_details($id)
    {
        $files = Student::where('id', $id)->with('files')->first();
        $agency_name = User::find($files->user_id);
        // dd($agency_name->agency_name);
        // dd($student);
        if ($files) {
            return response()->json([
                'message' => 'success',
                'status' => 200,
                'data' => $files,
                'agency' => $agency_name->agency_name
            ], 200);
        } else {
            return response()->json([
                'message' => 'failed',
                'status' => 500
            ], 500);
        }
    }

    public function student_show_agency($id)
    {
        $students = Student::where('user_id', $id)->with('files')->orderBy('id', 'desc')->get();
        if ($students) {
            return response()->json([
                'message' => 'success',
                'data' => $students,
                'status' => 200
            ], 200);
        } else {
            return response()->json([
                'message' => 'failed',
                'status' => 500
            ], 500);
        }
    }

    public function student_show_details_agency($agency_id, $id)
    {
        //   dd($agency_id,$id) ;
        $student = Student::where('user_id', $agency_id)->where('id', $id)->with('files')->first();
        if ($student) {
            return response()->json([
                'message'    => 'success',
                'status' => 200,
                'data' => $student
            ]);
        } else {
            return response()->json([
                'message'    => 'failed',
                'status' => 500
            ], 500);
        }
    }

    public function delete_file_by_agency($file_id)
    {
        // dd($file_id);
        $file = File::find($file_id);
        // dd(public_path($file->file_path));
        unlink(public_path($file->file_path));
        $delete = $file->delete();
        if ($delete) {
            return response()->json([
                'message' => 'success',
                'status' => 201,
            ], 201);
        } else {
            return response()->json([
                'message'    => 'failed',
                'status' => 500
            ], 500);
        }
    }

    public function comment(Request $request, $agency_id, $student_id)
    {
        // dd($agency_id,$student_id);
        $comment = Student::where('user_id', $agency_id)->where('id', $student_id)->first();
        $comment->comment = $request->comment;
        $save = $comment->save();
        if ($save) {
            return response()->json([
                'message'     => 'Commenting done',
                'status' => 201,
                'data' => $comment
            ], 201);
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
                if ($docs->status == 1 && $docs->status != 0 || $docs->status == 2) {
                    $student->status = 1;
                    $student->save();
                } else if ($docs->status != 1 && $docs->status == 0 || $docs->status == 2) {
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
