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

        if(!$features)
            throw new NotFoundHttpException; 

        return $features;
    }


    public function DoctorSpecialityFeaturesByID($name){
        return Our_speciality_features::with('doctors', 'doctors.centers')->where('title', $name)->get();
    }

    public function specialityBySlug($slug)
    {
        return Our_speciality_features::where('slug',$slug)->get();
    }
}
