<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Md_message;
use Dingo\Api\Routing\Helpers;
// VALIDATION: change the requests to match your own file names if you need form validation

class Md_messageController extends Controller
{

    public function index() 
    {

        return Md_message::get();

    }

    public function show($page)
    {
        $messages = Md_message::where('page', $page)->get();

        if(!$messages)
            throw new NotFoundHttpException; 

        return $messages;
    }
}
