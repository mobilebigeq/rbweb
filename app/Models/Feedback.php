<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Feedback extends Model
{
    protected $table = 'feedback';

    protected $fillable = ['health_problem','experience_with_doctor','doctor_friendliness','value_for_money','explanation_of_health_issue','treatment_satisfaction','doctor_recommend','patient_name','patient_id','patient_mobile','submit_as_anonymously'];

    protected function create($params)
    {
      return Feedback::insertGetId($params);
    }
}
