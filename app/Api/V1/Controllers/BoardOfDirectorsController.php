<?php
namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use JWTAuth;
use App\Models\BoardOfDirectors;
use App\Http\Controllers\Controller;
use Dingo\Api\Routing\Helpers;

class BoardOfDirectorsController extends Controller
{
    use Helpers;

    public function index()
	{
	    return BoardOfDirectors::get();
	}
}
