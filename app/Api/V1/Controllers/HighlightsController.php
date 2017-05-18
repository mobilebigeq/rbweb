<?php

namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use JWTAuth;
use App\Models\HomeHighlights;
use App\Http\Controllers\Controller;
use Dingo\Api\Routing\Helpers;

class HighlightsController extends Controller
{
    //
    use Helpers;

    public function index()
	{
	    return HomeHighlights::get();
	}
}
