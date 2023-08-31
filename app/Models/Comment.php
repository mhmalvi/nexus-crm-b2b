<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;

    protected $guarded=[];

    public function mandatory_files(){
        return $this->belongsTo(MandatoryFile::class);
    }

    public function files()
    {
        return $this->belongsTo(File::class);
    }
}
