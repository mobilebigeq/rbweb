<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Healthcare_service;
use Dingo\Api\Routing\Helpers;

// VALIDATION: change the requests to match your own file names if you need form validation

class Healthcare_serviceController extends Controller
{

    public function index() 
    {

    return Healthcare_service::get();

    }

    public function show($id)
    {
        $services = Healthcare_service::where('page', $id)->get();

        if(!$services)
            throw new NotFoundHttpException; 

        return $services;
    }

}
