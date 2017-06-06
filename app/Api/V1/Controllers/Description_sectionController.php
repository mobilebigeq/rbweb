<?php

namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use JWTAuth;
use App\Models\DescriptionSection;
use App\Http\Controllers\Controller;
use Dingo\Api\Routing\Helpers;

class Description_sectionController extends Controller
{
    public function index() 
    {

        return DescriptionSection::get();
    }

    public function show($page)
    {
        $descriptions = DescriptionSection::where('page', $page)->get();

        if(!$descriptions)
            throw new NotFoundHttpException; 

        return $descriptions;
    }
}
