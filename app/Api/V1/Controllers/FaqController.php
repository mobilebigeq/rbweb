<?php

namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use JWTAuth;
use App\Models\GroupSection;
use App\Models\QuestionSection;
use App\Http\Controllers\Controller;
use Dingo\Api\Routing\Helpers;

class FaqController extends Controller
{
    public function index()
	{
	    return GroupSection::with('questions')->get();
	}

    public function show($page){
         return GroupSection::with('questions')->where('page', $page)->get();
    }
}
