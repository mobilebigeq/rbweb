<?php

namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use App\Models\Question;
use App\Http\Controllers\Controller;
use Dingo\Api\Routing\Helpers;
use DB;


class QuestionController extends Controller
{

    public function index(){

    	// $question = DB::table('questions_table')
    	// 				->inRandomOrder()
    	// 				->take(1)
    	// 				->get();

    	$question = Question::select('id','question','option1','option2','option3','option4','created_at','updated_at')
    						->inRandomOrder()
    						->take(5)
    						->get();
    	

    	return response()->json($question);
	
    }


}
