<?php

namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Feedback;
use App\Http\Controllers\Controller;
use Dingo\Api\Routing\Helpers;
use Validator;
use DB;

class FeedbackController extends Controller
{
  public function submit(Request $request)
  {
    $response_code = 200;
    $messages = $errors = [];

    $request_data = $request->all();
    // echo '<pre>'; print_r($request_data); exit;

    $validator = Validator::make($request->all(), [
      'health_problem' => 'required',
      'happy_with' => 'filled',
      'patient_name' => 'required',
      'mobile' => 'required|numeric'
    ]);

    if ($validator->fails())
    {
      $errors = $validator->errors();
      // print_r($errors->all());
      $response_code = 406;
      $messages = $errors->all();
    }
    else
    {
      // Save feedback details
      $id = Feedback::create([
        'doctor_id' => $request->get('doctor_id'),
        'health_problem' => $request->get('health_problem'),
        'experience_with_doctor' => $request->get('doctor_experience'),
        'doctor_friendliness' => (!empty($request->get('doctorFriendliness')) ? $request->get('doctorFriendliness') : '0' ),
        'value_for_money' => (!empty($request->get('valueForMoney')) ? $request->get('valueForMoney') : '0' ),
        'explanation_of_health_issue' => (!empty($request->get('healthIssue')) ? $request->get('healthIssue') : '0' ),
        'treatment_satisfaction' => (!empty($request->get('treatmentSatisfaction')) ? $request->get('treatmentSatisfaction') : '0' ),
        'doctor_recommend' => (!empty($request->get('recommend_doctor')) ? $request->get('recommend_doctor') : '0' ),
        'patient_name' => $request->get('patient_name'),
        'patient_id' => (!empty($request->get('patient_id')) ? $request->get('patient_id') : '0' ),
        'patient_mobile' => $request->get('mobile'),
        'submit_as_anonymously' => (!empty($request->get('submit_as_anonymously')) ? $request->get('submit_as_anonymously') : '0' )
      ]);

    }

    return response()->json([
        'status_code' => $response_code,
        'message' => $errors
    ]);

  }
}
