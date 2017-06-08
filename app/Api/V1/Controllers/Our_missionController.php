<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Our_mission;
use Dingo\Api\Routing\Helpers;

// VALIDATION: change the requests to match your own file names if you need form validation
class Our_missionController extends Controller
{
	
    public function index() 
    {

    return Our_mission::get();

    }

    public function show($page)
    {
        $Our_mission = Our_mission::where('page', $page)->get();

        if(!$Our_mission)
            throw new NotFoundHttpException; 

        return $Our_mission;
    }


}
