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
        'health_problem' => $request_data['health_problem'],
        'experience_with_doctor' => $request_data['doctor_experience'],
        'doctor_friendliness' => (!empty($request_data['doctorFriendliness']) ? $request_data['doctorFriendliness'] : '0' ),
        'value_for_money' => (!empty($request_data['valueForMoney']) ? $request_data['valueForMoney'] : '0' ),
        'explanation_of_health_issue' => (!empty($request_data['healthIssue']) ? $request_data['healthIssue'] : '0' ),
        'treatment_satisfaction' => (!empty($request_data['treatmentSatisfaction']) ? $request_data['treatmentSatisfaction'] : '0' ),
        'doctor_recommend' => (!empty($request_data['recommend_doctor']) ? $request_data['recommend_doctor'] : '0' ),
        'patient_name' => $request_data['patient_name'],
        'patient_id' => (!empty($request_data['patient_id']) ? $request_data['patient_id'] : '0' ),
        'patient_mobile' => $request_data['mobile'],
        'submit_as_anonymously' => (!empty($request_data['submit_as_anonymously']) ? $request_data['submit_as_anonymously'] : '0' )
      ]);
      //
      // if($id)
      // {
      //   // Save family members details
      //   $family_member_spouse = $request_data['family_member_spouse'];
      //   $family_member_name = $request_data['family_member_name'];
      //   $family_member_age = $request_data['family_member_age'];
      //   $family_member_gender = $request_data['family_member_gender'];
      //   $family_member_spouse = $request_data['family_member_spouse'];
      //   $family_member_uhid = $request_data['family_member_uhid'];
      //
      //   if(!empty($request_data['family_member_spouse']))
      //   {
      //     foreach($family_member_spouse as $key => $val)
      //     {
      //       DB::table('inpatient_family_members')->insert([
      //         'feedback_id' => $id,
      //         'spouse' => (!empty($family_member_spouse[$key]) ? $family_member_spouse[$key] : '' ),
      //         'name' => (!empty($family_member_name[$key]) ? $family_member_name[$key] : '' ),
      //         'age' => (!empty($family_member_age[$key]) ? $family_member_age[$key] : '' ),
      //         'gender' => (!empty($family_member_gender[$key]) ? $family_member_gender[$key] : '' ),
      //         'uhid' => (!empty($family_member_uhid[$key]) ? $family_member_uhid[$key] : '' )
      //       ]);
      //     }
      //
      //   }
      //
      // }

    }

    return response()->json([
        'status_code' => $response_code,
        'message' => $errors
    ]);

  }
}
