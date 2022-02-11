<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Siswa extends Model
{
    use HasFactory;
    protected $tabel = 'siswas';
    protected $primaryKey = 'id';
    protected $fillable = [
        'nama',
        'nilai',
        'kota',
        'kab',
        'jk'
    ];
}
