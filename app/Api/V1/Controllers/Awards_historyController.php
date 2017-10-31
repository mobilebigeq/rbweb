<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Awards_history;
use Dingo\Api\Routing\Helpers;

// VALIDATION: change the requests to match your own file names if you need form validation

class Awards_historyController extends Controller
{

    public function index() 
    {

    return Awards_history::get();

    }

    public function show($page)
    {
    	$awards_history = Awards_history::where('awards_type', $page)->get();

    	if(!$awards_history)
            throw new NotFoundHttpException; 
        
    	return $awards_history;
    }


}
