<?php

namespace App\Http\Controllers;

use PDF;
use Carbon\Carbon;
use App\Models\File;
use App\Models\User;
use App\Models\Student;
use App\Mail\StudentMail;
use Illuminate\Http\Request;
use App\Models\StudentInvoice;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Storage;

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
    public function save(Request $request)    //////////////// register student with files
    {
        // dd($request->all());
        $student = new Student();
        $student->student_name = $request->student_name;
        $student->course_name = $request->course_name;
        $student->user_id = $request->user_id;

        $student->save();


        $mandatory_file = new MandatoryFile();
        $photo_id_name = $request->photo_id->getClientOriginalName();
        $fileName = time() . '.' . $request->photo_id->getClientOriginalExtension();
        $request->photo_id->move(public_path('assets/photo_id'), $fileName);
        $photo_id_file_path = "assets/photo_id/" . $fileName;


        $mandatory_file->photo_id = $photo_id_name;
        $mandatory_file->photo_id_path = $photo_id_file_path;
        $mandatory_file->student_id = $student->id;
        // $mandatory_file->save();

        /////////////////////////////////////////////////
        // dd($request->resume);
        $resume_name = $request->resume->getClientOriginalName();
        $fileName = time() . '.' . $request->resume->getClientOriginalExtension();
        $request->resume->move(public_path('assets/resume'), $fileName);
        $resume_file_path = "assets/resume/" . $fileName;


        $mandatory_file->resume = $resume_name;
        $mandatory_file->resume_path = $resume_file_path;
        $mandatory_file->student_id = $student->id;
        // $mandatory_file->save();

        //////////////////////////////////////////

        $reference_letter_name = $request->reference_letter->getClientOriginalName();
        $fileName = time() . '.' . $request->reference_letter->getClientOriginalExtension();
        $request->reference_letter->move(public_path('assets/reference_letter'), $fileName);
        $reference_letter_path = "assets/reference_letter/" . $fileName;
        $mandatory_file->reference_letter = $reference_letter_name;
        $mandatory_file->reference_letter_path = $reference_letter_path;
        $mandatory_file->student_id = $student->id;
        // $mandatory_file->save();

        ///////////////////////////////////

        $visa_copy_name = $request->visa_copy->getClientOriginalName();
        $fileName = time() . '.' . $request->visa_copy->getClientOriginalExtension();
        $request->visa_copy->move(public_path('assets/visa_copy'), $fileName);
        $visa_copy_file_path = "assets/visa_copy/" . $fileName;
        $mandatory_file->visa_copy = $visa_copy_name;
        $mandatory_file->visa_copy_path = $visa_copy_file_path;
        $mandatory_file->student_id = $student->id;
        // $mandatory_file->save();

        /////////////////////////////////

        $academic_qualification_name = $request->academic_qualification->getClientOriginalName();
        $fileName = time() . '.' . $request->academic_qualification->getClientOriginalExtension();
        $request->academic_qualification->move(public_path('assets/academic_qualification'), $fileName);
        $academic_qualification_file_path = "assets/academic_qualification/" . $fileName;
        $mandatory_file->academic_qualification = $academic_qualification_name;
        $mandatory_file->academic_qualification_path = $academic_qualification_file_path;
        $mandatory_file->student_id = $student->id;
        // $mandatory_file->save();

        ///////////////////////////////

        $photo_video_name = $request->photo_video->getClientOriginalName();
        $fileName = time() . '.' . $request->photo_video->getClientOriginalExtension();
        $request->photo_video->move(public_path('assets/photo_video'), $fileName);
        $photo_video_file_path = "assets/photo_video/" . $fileName;
        $mandatory_file->photo_video = $photo_video_name;
        $mandatory_file->photo_video_path = $photo_video_file_path;
        $mandatory_file->student_id = $student->id;
        // $mandatory_file->save();

        ////////////////////////////

        $usi_number_name = $request->usi_number->getClientOriginalName();
        $fileName = time() . '.' . $request->usi_number->getClientOriginalExtension();
        $request->usi_number->move(public_path('assets/usi_number'), $fileName);
        $usi_number_file_path = "assets/usi_number/" . $fileName;
        $mandatory_file->usi_number = $usi_number_name;
        $mandatory_file->usi_number_path = $usi_number_file_path;
        $mandatory_file->student_id = $student->id;
        // $mandatory_file->save();

        /////////////////////

        $pay_slip_name = $request->pay_slip->getClientOriginalName();
        $fileName = time() . '.' . $request->pay_slip->getClientOriginalExtension();
        $request->pay_slip->move(public_path('assets/pay_slip'), $fileName);
        $pay_slip_file_path = "assets/pay_slip/" . $fileName;
        $mandatory_file->pay_slip = $pay_slip_name;
        $mandatory_file->pay_slip_path = $pay_slip_file_path;
        $mandatory_file->student_id = $student->id;
        $mandatory_file->save();



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

    public function generatePDF(Request $request, $student_id)
    {
        // dd(storage_path());
        $price = $request->price;
        $student = Student::find($student_id);
        // dd($student);
        $data = [
            'price' => $price,
            'student_name' => $student->student_name,
            'course_name' => $student->course_name,

        ];
        // dd($data->student_name);
        $fileName = 'invoice-' . $student->student_name . '.pdf';
        $pdf = PDF::loadView('myPDF', $data);
        $content = $pdf->download()->getOriginalContent();
        $invoice = Storage::put('public/invoice/' . $fileName, $content);
        // dd($invoice);
        $invoice_date = Carbon::now();
        if ($invoice == true) {
            $student_invoice = StudentInvoice::create([
                'student_name'    => $student->student_name,
                'file_path'    => 'https://crmbtob.quadque.digital/storage/app/public/invoice/' . $fileName,
                'course_fee' => $request->price,
                'agency_id' => $student->user_id,
                'student_id' => $student->id,
                // 'invoice_date'=>
            ]);
        }
        // dd(storage_path('app/public/invoice/'.$fileName.'.pdf'));

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
