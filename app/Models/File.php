<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class File extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function students()
    {
        return $this->belongsTo(Student::class);
    }

    public function comments()
    {
        return $this->hasMany(Comment::class, 'file_id');
    }

}
