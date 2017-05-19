<?php

namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use JWTAuth;
use App\Models\HomeEvents;
use App\Http\Controllers\Controller;
use Dingo\Api\Routing\Helpers;

class EventsController extends Controller
{
    //
	use Helpers;

    public function index()
	{
	    return HomeEvents::get();
	}
}
