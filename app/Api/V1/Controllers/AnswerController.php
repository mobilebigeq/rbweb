<?php

namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use Dingo\Api\Routing\Helpers;
use App\Http\Controllers\Controller;
use App\Models\Question;
use App\Models\Answer;
use Validator;

class AnswerController extends Controller
{

    public function submit(Request $request){

    	$validator = Validator::make($request->all(),[
    	'users_id'=> 'required',
    	'questions_id' => 'required',
    	'answers_id' => 'required',
    	'status'=> 'required'

    	]);

    	$answer = Answer::create([
    		'users_id' => 1,
    		'questions_id' => $request->get('questions_id'),
    		'answers_id' => $request->get('answers_id'),
    		'status' => 0,
    		
    		]);

    	return response()->json($answer,201);
    }
}
