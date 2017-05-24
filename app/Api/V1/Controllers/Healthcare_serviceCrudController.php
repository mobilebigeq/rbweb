<?php
namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Healthcare_service;
use Dingo\Api\Routing\Helpers;

class Healthcare_serviceCrudController extends Controller
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
