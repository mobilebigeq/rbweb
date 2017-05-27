<?php
namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Hospitals;
use Dingo\Api\Routing\Helpers;


class HospitalsController extends Controller
{
	
    public function index()
    {
    	return Hospitals::get();
    }
}
