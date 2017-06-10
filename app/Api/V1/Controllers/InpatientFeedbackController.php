<?php

namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use JWTAuth;
use App\Models\InpatientFeedback;
use App\Http\Controllers\Controller;
use Dingo\Api\Routing\Helpers;
use Validator;
use DB;

class InpatientFeedbackController extends Controller
{
    public function submit(Request $request)
    {
      $response_code = 200;
      $messages = $errors = [];

      $request_data = $request->all();
      // echo '<pre>'; print_r($request_data); exit;

      $validator = Validator::make($request->all(), [
        'city' => 'required|max:255',
        'health_card_no' => 'required|max:255',
        'name' => 'required',
        'age' => 'required|numeric',
        'mobile' => 'required|numeric',
        'email' => 'required|email',
        'company' => 'required'
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
        $id = InpatientFeedback::create([
          'city' => $request_data['city'],
          'health_card_no' => $request_data['health_card_no'],
          'uhid_no' => $request_data['uhid_no'],
          'name' => $request_data['name'],
          'age' => $request_data['age'],
          'mobile' => $request_data['mobile'],
          'email' => $request_data['email'],
          'company' => $request_data['company'],
          'area' => $request_data['area'],
          'zip' => $request_data['zip'],
          'category' => $request_data['category']
        ]);

        if($id)
        {
          // Save family members details
          $family_member_spouse = $request_data['family_member_spouse'];
          $family_member_name = $request_data['family_member_name'];
          $family_member_age = $request_data['family_member_age'];
          $family_member_gender = $request_data['family_member_gender'];
          $family_member_spouse = $request_data['family_member_spouse'];
          $family_member_uhid = $request_data['family_member_uhid'];

          if(!empty($request_data['family_member_spouse']))
          {
            foreach($family_member_spouse as $key => $val)
            {
              DB::table('inpatient_family_members')->insert([
                'feedback_id' => $id,
                'spouse' => (!empty($family_member_spouse[$key]) ? $family_member_spouse[$key] : '' ),
                'name' => (!empty($family_member_name[$key]) ? $family_member_name[$key] : '' ),
                'age' => (!empty($family_member_age[$key]) ? $family_member_age[$key] : '' ),
                'gender' => (!empty($family_member_gender[$key]) ? $family_member_gender[$key] : '' ),
                'uhid' => (!empty($family_member_uhid[$key]) ? $family_member_uhid[$key] : '' )
              ]);
            }

          }

        }

      }

      return response()->json([
          'status_code' => $response_code,
          'message' => $errors
      ]);

    }


}
