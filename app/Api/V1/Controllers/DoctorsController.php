<?php

namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Doctors;
use App\Http\Controllers\Controller;
use Dingo\Api\Routing\Helpers;
class DoctorsController extends Controller
{
    //
	use Helpers;

    public function index()
	{
	    return Doctors::with('centers')->get();
	}
}
