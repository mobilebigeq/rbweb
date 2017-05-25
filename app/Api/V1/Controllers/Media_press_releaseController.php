<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Media_press_release;
use Dingo\Api\Routing\Helpers;
// VALIDATION: change the requests to match your own file names if you need form validation

class Media_press_releaseController extends Controller
{

    public function index() 
    {

    return Media_press_release::get();

    }

}
