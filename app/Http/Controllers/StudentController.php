<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\File;
use App\Models\User;
use App\Models\Student;
use App\Models\MandatoryFile;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Models\Comment;
use Illuminate\Support\Facades\Http;
use App\Mail\StudentMail;
use PDF;
use DB;
use App\Models\StudentInvoice;
use Illuminate\Support\Facades\Storage;

class StudentController extends Controller
{

    public function admin_analytics(Request $request)
    {
        // dd("hello");
        if ($request->bearerToken()) {
            $flag = Http::withToken($request->bearerToken())->post(env('CRM_USER_API', '') . '/check-if-token-exists');
            $flag_receive = $flag['data'];
            if ($flag_receive == 1) {
                $approved = Student::where('status', 1)->count();
                $pending = Student::where('status', 2)->count();
                $rejected = Student::where('status', 0)->count();
                $certified = Student::where('certificate', '!=', null)->count();
                return response()->json([
                    'message' => 'success',
                    'status' => 200,
                    'data' => ['approved' => $approved, 'pending' => $pending, 'rejected' => $rejected, 'certified' => $certified]
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

    // public function agency_graph

    public function agency_analytics(Request $request, $user_id)
    {
        // dd("vbfggf");
        if ($request->bearerToken()) {
            $flag = Http::withToken($request->bearerToken())->post(env('CRM_USER_API', '') . '/check-if-token-exists');
            $flag_receive = $flag['data'];
            if ($flag_receive == 1) {
                $approved = Student::where('user_id', $user_id)->where('pay_slip_status', 1)->count();
                $payment_disapproved = Student::where('user_id', $user_id)->where('pay_slip_status', 2)->count();
                $payment_pending = Student::where('user_id', $user_id)->where('pay_slip_status', null)->count();
                $pending = Student::where('user_id', $user_id)->where('status', 2)->count();
                $rejected = Student::where('user_id', $user_id)->where('status', 0)->count();
                $certified = Student::where('user_id', $user_id)->where('certificate', '!=', null)->count();
                return response()->json([
                    'message' => 'success',
                    'status' => 200,
                    'data' => ['payment_approved' => $approved, 'payment_pending' => $payment_pending, 'payment_disapproved' => $payment_disapproved, 'pending' => $pending, 'rejected' => $rejected, 'certified' => $certified]
                ]);

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
    public function admin_graph(Request $request)
    {
        if ($request->bearerToken()) {
            $flag = Http::withToken($request->bearerToken())->post(env('CRM_USER_API', '') . '/check-if-token-exists');
            $flag_receive = $flag['data'];
            if ($flag_receive == 1) {
                $data = Student::select(DB::raw("(COUNT(*)) as count"), DB::raw("MONTHNAME(created_at) as monthname"))->where('certificate', '!=', null)->whereYear('created_at', date('Y', strtotime('0 year')))->groupBy('monthname')->get();

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

    public function update_file(Request $request, $student_id)
    {
        $flag = Http::withToken($request->bearerToken())->post(env('CRM_USER_API', '') . '/check-if-token-exists');
        $flag_receive = $flag['data'];
        if ($flag_receive == 1) {
            if ($request->student_file) {
                $data = array();

                foreach ($request->student_file as $files) {
                    $fileName = $files->getClientOriginalName();
                    $file_exist = File::where('file_name', $fileName)->exists();
                    if (!$file_exist) {
                        $student = Student::find($student_id);
                        $student->status = 2;
                        $student->save();
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
    }
    public function save(Request $request)    //////////////// register student with files
    {
        // dd($request->all());
        $flag = Http::withToken($request->bearerToken())->post(env('CRM_USER_API', '') . '/check-if-token-exists');
        $flag_receive = $flag['data'];
        if ($flag_receive == 1) {
            if ($request->photo_id && $request->resume && $request->reference_letter && $request->visa_copy && $request->academic_qualification && $request->photo_video && $request->usi_number) {
                $course = json_decode($request->course);
                $agency = json_decode($request->agency);
                $student = new Student();
                $student->student_name = $request->student_name;
                $student->course_name = $course->label;
                $student->course_id = $course->value;
                $student->user_id = $agency->id;
                $student->agency_email = $agency->email;
                $student->agency_name = $agency->full_name;

                $student->save();


                $mandatory_file = new MandatoryFile();
                $photo_id_name = $request->photo_id->getClientOriginalName();
                // $fileName = time() . '.' . $request->photo_id->getClientOriginalExtension();
                // $request->photo_id->move(public_path('assets/files'), $fileName);
                // $photo_id_file_path = "assets/files/" . $fileName;
                $photo_id_file_path = $request->photo_id->store('assets/files', ['disk' =>   'files']);
                $mandatory_file->status = 2;
                $mandatory_file->file_type = "Photo ID";
                $mandatory_file->file_name = $photo_id_name;
                $mandatory_file->file_path = $photo_id_file_path;
                $mandatory_file->student_id = $student->id;
                $mandatory_file->save();

                /////////////////////////////////////////////////
                $mandatory_file = new MandatoryFile();
                $resume_name = $request->resume->getClientOriginalName();
                // $fileName = time() . '.' . $request->resume->getClientOriginalExtension();
                // $request->resume->move(public_path('assets/files'), $fileName);
                // $resume_file_path = "assets/files/" . $fileName;
                $resume_file_path = $request->resume->store('assets/files', ['disk' =>   'files']);
                $mandatory_file->status = 2;
                $mandatory_file->file_type = "Resume";
                $mandatory_file->file_name = $resume_name;
                $mandatory_file->file_path = $resume_file_path;
                $mandatory_file->student_id = $student->id;
                $mandatory_file->save();

                //////////////////////////////////////////
                $mandatory_file = new MandatoryFile();
                $reference_letter_name = $request->reference_letter->getClientOriginalName();
                // $fileName = time() . '.' . $request->reference_letter->getClientOriginalExtension();
                // $request->reference_letter->move(public_path('assets/files'), $fileName);
                // $reference_letter_path = "assets/files/" . $fileName;
                $reference_letter_path = $request->reference_letter->store('assets/files', ['disk' =>   'files']);
                $mandatory_file->file_type = "Reference Letter";
                $mandatory_file->status = 2;
                $mandatory_file->file_name = $reference_letter_name;
                $mandatory_file->file_path = $reference_letter_path;
                $mandatory_file->student_id = $student->id;
                $mandatory_file->save();

                ///////////////////////////////////
                $mandatory_file = new MandatoryFile();
                $visa_copy_name = $request->visa_copy->getClientOriginalName();
                // $fileName = time() . '.' . $request->visa_copy->getClientOriginalExtension();
                // $request->visa_copy->move(public_path('assets/files'), $fileName);
                // $visa_copy_file_path = "assets/files/" . $fileName;
                $visa_copy_file_path = $request->visa_copy->store('assets/files', ['disk' =>   'files']);
                $mandatory_file->file_type = "Visa Copy";
                $mandatory_file->file_name = $visa_copy_name;
                $mandatory_file->file_path = $visa_copy_file_path;
                $mandatory_file->status = 2;
                $mandatory_file->student_id = $student->id;
                $mandatory_file->save();

                /////////////////////////////////
                $mandatory_file = new MandatoryFile();
                $academic_qualification_name = $request->academic_qualification->getClientOriginalName();
                // $fileName = time() . '.' . $request->academic_qualification->getClientOriginalExtension();
                // $request->academic_qualification->move(public_path('assets/files'), $fileName);
                // $academic_qualification_file_path = "assets/files/" . $fileName;
                $academic_qualification_file_path = $request->academic_qualification->store('assets/files', ['disk' =>   'files']);
                $mandatory_file->file_type = "Academic Qualification";
                $mandatory_file->file_name = $academic_qualification_name;
                $mandatory_file->file_path = $academic_qualification_file_path;
                $mandatory_file->status = 2;
                $mandatory_file->student_id = $student->id;
                $mandatory_file->save();

                ///////////////////////////////
                $mandatory_file = new MandatoryFile();
                $photo_video_name = $request->photo_video->getClientOriginalName();
                // $fileName = time() . '.' . $request->photo_video->getClientOriginalExtension();
                // $request->photo_video->move(public_path('assets/files'), $fileName);
                // $photo_video_file_path = "assets/files/" . $fileName;
                $photo_video_file_path = $request->photo_video->store('assets/files', ['disk' =>   'files']);
                $mandatory_file->file_type = "Photo Video";
                $mandatory_file->file_name = $photo_video_name;
                $mandatory_file->file_path = $photo_video_file_path;
                $mandatory_file->status = 2;
                $mandatory_file->student_id = $student->id;
                $mandatory_file->save();

                ////////////////////////////
                $mandatory_file = new MandatoryFile();
                $usi_number_name = $request->usi_number->getClientOriginalName();
                // $fileName = time() . '.' . $request->usi_number->getClientOriginalExtension();
                // $request->usi_number->move(public_path('assets/files'), $fileName);
                // $usi_number_file_path = "assets/files/" . $fileName;
                $usi_number_file_path = $request->usi_number->store('assets/files', ['disk' =>   'files']);
                $mandatory_file->file_type = "Usi Number";
                $mandatory_file->file_name = $usi_number_name;
                $mandatory_file->file_path = $usi_number_file_path;
                $mandatory_file->status = 2;
                $mandatory_file->student_id = $student->id;
                $mandatory_file->save();
                // dd("hello");
                if ($request->student_file) {
                    $data = array();

                    foreach ($request->student_file as $files) {
                        $fileName = $files->getClientOriginalName();
                        // $checklist_exist = File::where('file_name', $fileName)->exists();
                        // if (!$checklist_exist) {
                        $path = $files->store('assets/student_files', ['disk' =>   'student_files']);
                        $save = File::create([
                            'file_path' => $path,
                            'file_name' => $fileName,
                            'student_id' => $student->id
                        ]);
                        $path = "";
                        // } 
                        // else {
                        //     return response()->json([
                        //         'message' => 'File already exists',
                        //         'status' => 409
                        //     ], 409);
                        // }
                    }
                }
                // if ($save) {
                return response()->json([
                    'message'    => 'Uploaded successfully',
                    'status' => 201,
                    'data' => ['student' => $student]
                ], 201);
                // }
            } else {
                return response()->json([
                    'message' => 'File missing. Please attach all files',
                    'status' => 500
                ], 500);
            }


            // dd(json_decode($request->all()));


            /////////////////////





        }
    }

    public function update_single_file(Request $request, $file_id, $flag_id)
    {
        // dd($file_id);
        if ($request->bearerToken()) {
            $flag = Http::withToken($request->bearerToken())->post(env('CRM_USER_API', '') . '/check-if-token-exists');
            $flag_receive = $flag['data'];

            if ($flag_receive == 1) {
                if ($flag_id == 0) {
                    $file = MandatoryFile::find($file_id);
                    if (Storage::exists($file->file_path)) {
                        unlink(public_path($file->file_path));
                    }
                    $file_name = $request->file->getClientOriginalName();
                    $fileName = time() . '.' . $request->file->getClientOriginalExtension();
                    $request->file->move(public_path('assets/files'), $fileName);
                    $file_path = "assets/files/" . $fileName;
                    $file->file_name = $file_name;
                    $file->file_path = $file_path;
                    $file->status = 2;
                    $update = $file->save();
                    // $delete = $file->delete();

                    if ($update) {
                        return response()->json([
                            'message'    => 'File Updated',
                            'status' => 201
                        ], 201);
                    }
                } else {
                    $file = File::find($file_id);
                    if (Storage::exists($file->file_path)) {
                        unlink(public_path($file->file_path));
                    }
                    $file_name = $request->file->getClientOriginalName();
                    $fileName = time() . '.' . $request->file->getClientOriginalExtension();
                    $request->file->move(public_path('assets/student_files'), $fileName);
                    $file_path = "assets/student_files/" . $fileName;
                    $file->file_name = $file_name;
                    $file->file_path = $file_path;
                    $file->status = 2;
                    $update = $file->save();

                    if ($update) {
                        return response()->json([
                            'message'    => 'File Updated',
                            'status' => 201
                        ], 201);
                    }
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

    public function generatePDF(Request $request, $student_id)
    {
        // dd(Carbon\Carbon::now()->format('j-f-Y'))
        $flag = Http::withToken($request->bearerToken())->post(env('CRM_USER_API', '') . '/check-if-token-exists');
        $flag_receive = $flag['data'];
        if ($flag_receive == 1) {
            // dd(storage_path());
            $price = $request->price;
            $student = Student::find($student_id);
            $invoice_date = Carbon::now()->toDateTimeString();
            $invoice_date_to_file = Carbon::now()->format('d F Y');
            // dd($invoice_date_to_file);
            $data = [
                'price' => $price,
                'student_name' => $student->student_name,
                'course_name' => $student->course_name,
                'invoice_date' => $invoice_date_to_file
            ];
            // dd($data->student_name);
            $fileName = 'invoice-' . $student->student_name . '.pdf';
            $pdf = PDF::loadView('myPDF', $data);
            $content = $pdf->download()->getOriginalContent();
            $invoice_number = random_int(10000, 99999);
            $invoice = Storage::put('public/invoice/' . $fileName, $content);
            // dd($invoice);

            // dd(json_encode($invoice_date));
            $student_invoice_exist = StudentInvoice::where('student_id', $student->id)->first();
            // dd($student_invoice_exist);
            // if($student_invoice_exist){
            //     $student_invoice_exist->invoice_number=$student_invoice_exist->invoice_number;
            //     $student_invoice_exist->student_name = $student->student_name;
            //     $student_invoice_exist->file_path = 'https://crmbtob.quadque.digital/storage/app/public/invoice/'.$fileName;
            //     $student_invoice_exist->course_fee = $request->price;
            //     $student_invoice_exist->agency_id = $student->user_id;
            //     $student_invoice_exist->student_id = $student->id;
            //     $student_invoice_exist->invoice_date = $invoice_date;
            //     $student_invoice = $student_invoice_exist->save();
            // }else{
            if ($invoice == true) {
                $student_invoice = StudentInvoice::create([
                    'invoice_number' => $invoice_number,
                    'student_name'    => $student->student_name,
                    'file_path'    => 'https://crmbtob.quadque.digital/storage/app/public/invoice/' . $fileName,
                    'course_fee' => $request->price,
                    'agency_id' => $student->user_id,
                    'student_id' => $student->id,
                    'invoice_date' => $invoice_date
                ]);

                if ($student_invoice) {
                    return response()->json([
                        'message'    => 'Invoice generated',
                        'status' => 201,
                        'data' => $student_invoice
                    ], 201);
                }
            } else {
                return response()->json([
                    'message'    => 'failed',
                    'status' => 500,
                ], 500);
            }
            // }

        }
        // dd(storage_path('app/public/invoice/'.$fileName.'.pdf'));

    }

    public function pay_slip(Request $request)
    {
        // dd("hello");
        $flag = Http::withToken($request->bearerToken())->post(env('CRM_USER_API', '') . '/check-if-token-exists');
        $flag_receive = $flag['data'];
        if ($flag_receive == 1) {
            $student = Student::find($request->student_id);
            if ($student->pay_slip !== null) {
                unlink(public_path($student->pay_slip));
            }
            if ($student) {
                $pay_slip_name = $request->pay_slip->getClientOriginalName();
                $fileName = time() . '.' . $request->pay_slip->getClientOriginalExtension();
                $request->pay_slip->move(public_path('assets/pay_slip'), $fileName);
                $pay_slip_file_path = "assets/pay_slip/" . $fileName;
                $student->pay_slip = $pay_slip_file_path;
                $student->pay_slip_status = 0;
                $save = $student->save();
                if ($save) {
                    return response()->json([
                        'message'    => 'success',
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

    public function get_student_lists(Request $request)
    {
        $flag = Http::withToken($request->bearerToken())->post(env('CRM_USER_API', '') . '/check-if-token-exists');
        $flag_receive = $flag['data'];
        if ($flag_receive == 1) {
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
        } else {
            return response()->json([
                'message'    => 'unauthenticated',
                'status' => 401
            ], 401);
        }
    }

    ////////////////// search student in admin ///////////////////// 
    public function search_student_in_student_admin(Request $request)
    {
        if ($request->bearerToken()) {
            $flag = Http::withToken($request->bearerToken())->post(env('CRM_USER_API', '') . '/check-if-token-exists');
            $flag_receive = $flag['data'];

            if ($flag_receive == 1) {
                $result = Student::where('student_name', 'like', '%' . $request->name . '%')->get();
                if ($result) {
                    return response()->json([
                        'message'    => 'success',
                        'status' => 200,
                        'data' => $result
                    ], 200);
                } else {
                    return response()->json([
                        'message'    => 'success',
                        'status' => 404
                    ], 404);
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

    ////////////////// search student in agency ///////////////////// 
    public function search_student_in_student_agency(Request $request)
    {
        if ($request->bearerToken()) {
            $flag = Http::withToken($request->bearerToken())->post(env('CRM_USER_API', '') . '/check-if-token-exists');
            $flag_receive = $flag['data'];

            if ($flag_receive == 1) {
                $result = Student::where('student_name', 'like', '%' . $request->name . '%')->where('user_id', $request->user_id)->get();
                if ($result) {
                    return response()->json([
                        'message'    => 'success',
                        'status' => 200,
                        'data' => $result
                    ], 200);
                } else {
                    return response()->json([
                        'message'    => 'not found',
                        'status' => 404
                    ], 404);
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

    public function send_mail(Request $request, $id)
    {
        $student = Student::find($id);
        $files = File::where('student_id', $id)->get();
        // dd(json_decode($files));
        $mandatory_files = MandatoryFile::where('student_id', $id)->get();
        // dd($files);
        $file_array = [];


        foreach ($mandatory_files as $man_file) {
            array_push($file_array, $man_file->file_path);
        }

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

    public function get_student_details(Request $request, $id)
    {
        $flag = Http::withToken($request->bearerToken())->post(env('CRM_USER_API', '') . '/check-if-token-exists');
        $flag_receive = $flag['data'];
        if ($flag_receive == 1) {
            $files = Student::where('id', $id)->with('files', 'invoice', 'mandatory_files')->first();
            $user = Http::get(env('CRM_USER_API', '') . '/user-details', ['user_id' => $files->user_id, 'role' => 9]);
            // dd($agency_name->agency_name);
            $agency = json_decode($user);
            // dd($agency->data->full_name);
            if ($files) {
                return response()->json([
                    'message' => 'success',
                    'status' => 200,
                    'data' => $files,
                    'agency' => $agency->data->full_name
                ], 200);
            } else {
                return response()->json([
                    'message' => 'failed',
                    'status' => 500
                ], 500);
            }
        }
    }

    public function student_show_agency(Request $request, $id)
    {
        $flag = Http::withToken($request->bearerToken())->post(env('CRM_USER_API', '') . '/check-if-token-exists');
        $flag_receive = $flag['data'];
        if ($flag_receive == 1) {
            $students = Student::where('user_id', $id)->with('files', 'invoice')->orderBy('id', 'desc')->get();
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
    }

    public function student_show_details_agency(Request $request, $agency_id, $id)
    {
        $flag = Http::withToken($request->bearerToken())->post(env('CRM_USER_API', '') . '/check-if-token-exists');
        $flag_receive = $flag['data'];
        if ($flag_receive == 1) {
            //   dd($agency_id,$id) ;
            $student = Student::where('user_id', $agency_id)->where('id', $id)->with('files', 'invoice', 'mandatory_files')->first();
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
    }


    ////////////// certificate upload by admin ///////////////////////////
    public function certificate_upload(Request $request)
    {
        if ($request->bearerToken()) {
            $flag = Http::withToken($request->bearerToken())->post(env('CRM_USER_API', '') . '/check-if-token-exists');
            $flag_receive = $flag['data'];
            if ($flag_receive == 1) {
                $student = Student::find($request->student_id);
                if ($student->certificate != null) {
                    unlink(public_path($student->certificate));
                }
                $certificate_name = $request->certificate->getClientOriginalName();
                $fileName = time() . '.' . $request->certificate->getClientOriginalExtension();
                $request->certificate->move(public_path('assets/certificate'), $fileName);
                $certificate_file_path = "assets/certificate/" . $fileName;
                $student->certificate = $certificate_file_path;
                $response = $student->save();
                if ($response) {
                    return response()->json([
                        'message' => 'success',
                        'status' => 201,
                        'data' => $response
                    ], 201);
                } else {
                    return response()->json([
                        'message' => 'Failed',
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

    public function delete_file_by_agency(Request $request, $student_id, $file_id)
    {
        $flag = Http::withToken($request->bearerToken())->post(env('CRM_USER_API', '') . '/check-if-token-exists');
        $flag_receive = $flag['data'];
        if ($flag_receive == 1) {
            if ($request->flag === 0) {
                $file = MandatoryFile::find($file_id);
            } else {
                $file = File::find($file_id);
            }

            $student = Student::find($student_id);
            unlink(public_path($file->file_path));
            $delete = $file->delete();
            if ($delete) {
                // if($request->flag===0){
                $mandatory_files = MandatoryFile::where('student_id', $student_id)->where('status', 0)->exists();
                $mandatory_files_pending = MandatoryFile::where('student_id', $student_id)->where('status', 2)->exists();
                // }else{
                $files = File::where('student_id', $student_id)->where('status', 0)->exists();
                $files_pending = File::where('student_id', $student_id)->where('status', 2)->exists();
                // }
                // dd($files);
                if ($files || $mandatory_files) {
                    $student->status = 0;
                    $student->save();
                } else if ($files_pending || $mandatory_files_pending) {
                    $student->status = 2;
                    $student->save();
                } else {
                    $student->status = 1;
                    $student->save();
                }
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


    ///////////// change file status //////////////////
    public function change_status(Request $request)
    {
        $flag = Http::withToken($request->bearerToken())->post(env('CRM_USER_API', '') . '/check-if-token-exists');
        $flag_receive = $flag['data'];
        if ($flag_receive == 1) {
            // dd($request->all());
            if ($request->flag === 0) {
                $file = MandatoryFile::where('student_id', $request->student_id)->where('id', $request->file_id)->first();
            } else {
                $file = File::where('student_id', $request->student_id)->where('id', $request->file_id)->first();
            }

            if ($file) {
                $file->status = $request->status;
                $save = $file->save();
                // if($save && $request->status ==1){
                //     $comments = Comment::where('file_id',$request->file_id)->get();
                //         foreach($comments as $comment){
                //             $comment->delete();        
                //         }

                // }
                $student = Student::find($request->student_id);
                // if($request->flag===0){
                $mandatory_files = MandatoryFile::where('student_id', $request->student_id)->where('status', 0)->exists();
                $mandatory_files_pending = MandatoryFile::where('student_id', $request->student_id)->where('status', 2)->exists();
                // }else{
                $files = File::where('student_id', $request->student_id)->where('status', 0)->exists();
                $files_pending = File::where('student_id', $request->student_id)->where('status', 2)->exists();
                // }

                // dd($files);
                if ($files || $mandatory_files) {
                    $student->status = 0;
                    $student->save();
                } else if ($files_pending || $mandatory_files_pending) {
                    $student->status = 2;
                    $student->save();
                } else {
                    $student->status = 1;
                    $student->save();
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
}
