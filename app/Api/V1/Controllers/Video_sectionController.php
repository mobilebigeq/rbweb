<?php

namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use JWTAuth;
use App\Models\VideoSection;
use App\Http\Controllers\Controller;
use Dingo\Api\Routing\Helpers;


class Video_sectionController extends Controller
{
    public function index() 
    {
        return VideoSection::get();
    }

    public function show($page)
    {
        $descriptions = VideoSection::where('page', $page)->get();

        if(!$descriptions)
            throw new NotFoundHttpException; 

        return $descriptions;
    }
}
