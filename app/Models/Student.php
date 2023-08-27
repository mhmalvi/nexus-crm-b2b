<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;
use App\Models\File;
use App\Models\StudentInvoice;

class Student extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function agencies()
    {
        return $this->belongsTo(User::class);
    }

    public function files()
    {
        return $this->hasMany(File::class);
    }

    public function invoice()
    {
        return $this->hasOne(StudentInvoice::class);
    }
}
