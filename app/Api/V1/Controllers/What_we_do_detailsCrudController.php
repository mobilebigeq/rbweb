<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\What_we_do_details;
use Dingo\Api\Routing\Helpers;

class What_we_do_detailsCrudController extends Controller
{
    public function index() 
    {
        return What_we_do_details::get();
    }

}
