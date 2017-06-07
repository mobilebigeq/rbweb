<?php


namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\History_details;
use Dingo\Api\Routing\Helpers;
// VALIDATION: change the requests to match your own file names if you need form validation

class History_detailsController extends Controller
{

    public function index() 
    {

    return History_details::get();

    }

    public function show($page)
    {
    	$history = History_details::where('page', $page)->get();
    	if(!$history)
            throw new NotFoundHttpException; 
    	return $history;
    }

}
