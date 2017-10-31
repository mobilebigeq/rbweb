<?php

namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use JWTAuth;
use App\Models\PressClips;
use App\Http\Controllers\Controller;
use Dingo\Api\Routing\Helpers;


class Press_clipsController extends Controller
{
    // use Helpers;

    public function index() 
    {

        return PressClips::get();
    }

    public function show($page)
    {
        $descriptions = PressClips::where('page', $page)->get();

        if(!$descriptions)
            throw new NotFoundHttpException; 

        return $descriptions;
    }
}
