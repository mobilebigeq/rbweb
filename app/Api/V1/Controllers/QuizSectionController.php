<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\QuizGroup;
use App\Models\QuizSection;
use App\Models\Speciality_masters;
use Dingo\Api\Routing\Helpers;

// VALIDATION: change the requests to match your own file names if you need form validation

class QuizSectionController extends Controller
{

    public function index($id) 
    {
        return Speciality_masters::with('groups', 'groups.questions')->where('id', $id)->get();
    }

}