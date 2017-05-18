<?php

namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Categories;
use App\Http\Controllers\Controller;
use Dingo\Api\Routing\Helpers;

class CategoriesController extends Controller
{
    //
    use Helpers;

    public function index()
	{
	    return Categories::get();
	}
}
