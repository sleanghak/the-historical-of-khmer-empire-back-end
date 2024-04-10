<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SiteConfig extends Model
{
    use HasFactory;

    protected $fillable = [
        'header_logo',
        'footer_logo',
        'phone_number',
        'email',
        'address',
        'telegram',
    ];
}
