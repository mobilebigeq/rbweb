<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use Validator;
use App\Models\QuizGroup;
use App\Models\QuizSection;
use App\Models\Speciality_masters;
use Dingo\Api\Routing\Helpers;
use DB;

// VALIDATION: change the requests to match your own file names if you need form validation

class QuizSectionController extends Controller
{

    public function index($id)
    {
        return Speciality_masters::with('groups', 'groups.questions')->where('id', $id)->get();
    }

    public function submit(Request $request)
    {
      // echo '<pre>'; print_r($request->all()); exit;
      $response_code = 200;
      $messages = $errors = [];

      $request_data = $request->all();
      // echo '<pre>'; print_r($request_data); exit;

      $validator = Validator::make($request->all(), [
        'name' => 'required',
        'email' => 'required|email',
        'phone' => 'required|numeric',
        'city' => 'required'
      ]);

      if ($validator->fails())
      {
        $errors = $validator->errors();
        $response_code = 406;
        $messages = $errors->all();
      }
      else
      {
        // Check questions
        $questions = $request->get('questions');
        if(empty($questions)) {
          $response_code = 406;
          $errors['questions'] = 'You have not passed questions/answers data';
        }
        else {
          // Save feedback details
          $id = QuizGroup::create([
            'name' => $request->get('name'),
            'email' => $request->get('email'),
            'phone' => $request->get('phone'),
            'city' => $request->get('city'),
            'quiz_group_id' => $request->get('quiz_group_id')
          ]);

          // Save questions and answers
          if(!empty($questions))
          {
            foreach ($questions as $key => $value)
            {
              DB::table('submit_quiz_answers')->insert([
                'submit_quiz_id' => $id,
                'question_id' => $value['question'],
                'answer' => $value['answer']
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
