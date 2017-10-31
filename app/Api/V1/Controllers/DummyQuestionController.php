<?php

namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use JWTAuth;
use App\Models\DummyQuestion;
use App\Http\Controllers\Controller;
use Dingo\Api\Routing\Helpers;
use Validator;
use DB;


class DummyQuestionController extends Controller
{
    public function index(){

    	return  DummyQuestion::get();
    }

    public function submit(Request $request){

    	$validator = Validator::make($request->all(),[
    		'question'=> 'required',
    		'answer'=> 'required',
    		'status' => 'required',

    		]);
    

    if ($validator->fails())
    {
      $errors = $validator->errors();
      // print_r($errors->all());
      $response_code = 406;
      $messages = $errors->all();
    }
    else{

    	$id = DummyQuestion::create([
    		'question' => $request->get('question'),
    		'answer'=> $request->get('answer'),
    		'status'=> 1
    		]);
    }
}
}
