<?php

namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Page_description;
use App\Http\Controllers\Controller;
use Dingo\Api\Routing\Helpers;


// VALIDATION: change the requests to match your own file names if you need form validation


class Page_descriptionController extends Controller
{

   // use Helpers;

    public function index() 
    {

        return Page_description::get();
    }

    public function show($id)
    {
        $descriptions = Page_description::where('page', $id)->get();

        if(!$descriptions)
            throw new NotFoundHttpException; 

        return $descriptions;
    }
    
}
