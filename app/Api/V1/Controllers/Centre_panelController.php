<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Centre_panel;
use Dingo\Api\Routing\Helpers;



class Centre_panelController extends Controller
{

	public function index()
	{
		return Centre_panel::get();
	}
    
}
