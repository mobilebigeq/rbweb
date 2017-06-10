<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Academic_Programs;
use App\Models\GroupSection;
use Dingo\Api\Routing\Helpers;

// VALIDATION: change the requests to match your own file names if you need form validation
class AcademicProgramsController extends Controller
{
	
    public function index() 
    {

        return Academic_Programs::with('get_all_groups', 'get_all_sub_groups', 'doctors')->get();

    }


}
