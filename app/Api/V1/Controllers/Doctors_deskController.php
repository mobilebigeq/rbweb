<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Doctors_desk;
use Dingo\Api\Routing\Helpers;

class Doctors_deskController extends Controller
{

    public function index()
    {
    	return Doctors_desk::get();
    }
}
