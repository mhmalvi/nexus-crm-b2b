<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Student;

class StudentInvoice extends Model
{
    use HasFactory;
    protected $guarded=[];

    public function student(){
        return $this->belongsTo(Student::class);
    }
}
