<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Brief_facilities;
use Dingo\Api\Routing\Helpers;

class Brief_facilitiesCrudController extends Controller
{

    public function index() 
    {
        return Brief_facilities::get();
    }

    public function show($id)
    {
        $facilities = Brief_facilities::where('page', $id)->get();

        if(!$facilities)
            throw new NotFoundHttpException; 

        return $facilities;
    }

}
