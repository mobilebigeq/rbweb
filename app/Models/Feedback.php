<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Feedback extends Model
{
    protected $table = 'feedback';

    protected $fillable = ['city','health_card_no','uhid_no','name','age','mobile','email','company','area','zip','category'];

    protected function create($params)
    {
      return Feedback::insertGetId($params);
    }
}
