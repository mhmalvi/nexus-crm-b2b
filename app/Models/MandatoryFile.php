<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MandatoryFile extends Model
{
    use HasFactory;

    protected $guarded=[];

    protected $table = "mandatory_files";
}
