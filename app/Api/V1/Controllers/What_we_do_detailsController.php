<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\What_we_do_details;
use Dingo\Api\Routing\Helpers;

// VALIDATION: change the requests to match your own file names if you need form validation
class What_we_do_detailsController extends Controller
{
	
    public function index() 
    {

    return What_we_do_details::get();

    }


}
