<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Our_speciality_features;
use Dingo\Api\Routing\Helpers;


class Our_speciality_featuresCrudController extends Controller
{

    public function index() 
    {

        return Our_speciality_features::get();

    }
}
