<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Page_description;
use Dingo\Api\Routing\Helpers;


class Page_descriptionCrudController extends Controller
{

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
