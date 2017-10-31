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

      $userDetails = $request->get('userDetails');

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
          'city' => $request->get('city'),
          'health_card_no' => $request->get('health_card_no'),
          'uhid_no' => $request->get('uhid_no'),
          'name' => $request->get('name'),
          'age' => $request->get('age'),
          'mobile' => $request->get('mobile'),
          'email' => $request->get('email'),
          'company' => $request->get('company'),
          'area' => $request->get('area'),
          'zip' => $request->get('zip'),
          'category' => $request->get('category')
        ]);

        if($id)
        {
          // Save family members details
          $family_member_spouse = $request->get('family_member_spouse');
          $family_member_name = $request->get('family_member_name');
          $family_member_age = $request->get('family_member_age');
          $family_member_gender = $request->get('family_member_gender');
          $family_member_spouse = $request->get('family_member_spouse');
          $family_member_uhid = $request->get('family_member_uhid');

          $userDetails = $request->get('userDetails');
          if(!empty($userDetails))
          {
            foreach($userDetails as $key => $val)
            {
              DB::table('inpatient_family_members')->insert([
                'feedback_id' => $id,
                'spouse' => $val['family_member_spouse'],
                'name' => $val['family_member_name'],
                'age' => $val['family_member_age'],
                'gender' => $val['family_member_gender'],
                'uhid' => $val['family_member_uhid']
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
