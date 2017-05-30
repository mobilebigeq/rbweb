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
    
}
