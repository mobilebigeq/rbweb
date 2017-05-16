<?php

namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Centers;
use App\Http\Controllers\Controller;
use Dingo\Api\Routing\Helpers;

class CentersController extends Controller
{
    //
    use Helpers;

    public function index()
	{
	    return Centers::get();
	}
}
