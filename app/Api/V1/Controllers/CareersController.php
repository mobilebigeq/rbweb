<?php

namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Careers;
use App\Http\Controllers\Controller;
use Dingo\Api\Routing\Helpers;

class CareersController extends Controller
{
 	use Helpers;

    public function index()
	{
	    return Careers::get();
	}
}
