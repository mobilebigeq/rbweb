<?php

namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Specialities;
use App\Http\Controllers\Controller;
use Dingo\Api\Routing\Helpers;

class SpecialitiesController extends Controller
{
    //
    public function index() 
    {
    	return Specialities::get();
    }
}
