<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class InpatientFeedback extends Model
{
  protected $table = 'inpatient_feedback';

  protected $fillable = ['city','health_card_no','uhid_no','name','age','mobile','email','company','area','zip','category'];

  protected function create($params)
  {
    return InpatientFeedback::insertGetId($params);
  }

}
