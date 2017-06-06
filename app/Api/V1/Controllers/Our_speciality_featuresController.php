<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Our_speciality_features;
use Dingo\Api\Routing\Helpers;

// VALIDATION: change the requests to match your own file names if you need form validation

class Our_speciality_featuresController extends Controller
{

    public function index() 
    {
    	return Our_speciality_features::get();
    }

    public function show($page)
    {
        $features = Our_speciality_features::where('page', $page)->get();

        if(!$descriptions)
            throw new NotFoundHttpException; 

        return $features;
    }
}
