<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Academic_Programs;
use App\Models\GroupSection;
use App\Models\SubGroupSection;
use Dingo\Api\Routing\Helpers;
use DB;

// VALIDATION: change the requests to match your own file names if you need form validation
class AcademicProgramsController extends Controller
{
	
    public function index() 
    {
        
        $acedamic_data = GroupSection::with('sub_group','sub_group.academic_programs','sub_group.academic_programs.academic_contact','questions')->get();

        return $acedamic_data;
    }


}
