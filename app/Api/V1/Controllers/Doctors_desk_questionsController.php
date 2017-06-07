<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Doctors_desk_questions;
use Dingo\Api\Routing\Helpers;

class Doctors_desk_questionsController extends Controller
{

	public function index()
	{
		return Doctors_desk_questions::get();
	}

	

	public function show($page)
    {
        $Doctors_desk_questions = Doctors_desk_questions::where('page', $page)->get();

        if(!$Doctors_desk_questions)
            throw new NotFoundHttpException; 

        return $Doctors_desk_questions;
    }
    
}
