<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Support\Facades\File;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class StudentMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */

    public $student_name;
    public $course_name;
    public $file_path;
    public $subject;


    public function __construct($student_name, $course_name, $file_path, $subject)
    {
        $this->student_name = $student_name;
        $this->course_name = $course_name;
        $this->file_path = $file_path;
        $this->subject = $subject;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        // return $this->view('view.name');
        set_time_limit(0);
        $this
            ->subject($this->subject)->with(['student_name' => $this->student_name, 'course_name' => $this->course_name])
            ->markdown('studentMail');
        // dd($this->file_path);
        foreach ($this->file_path as $file) {
            // $content = File::get());
            // dd($content);
            $this->attach(public_path($file));
        }
        return $this;
    }
}
