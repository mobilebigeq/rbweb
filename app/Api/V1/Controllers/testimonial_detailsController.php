<?php
namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Testimonial_details;
use Dingo\Api\Routing\Helpers;

class testimonial_detailsController extends Controller
{
    public function index()
    {
    	return Testimonial_details::get();
    }

    public function show($page)
    {
        $descriptions = Testimonial_details::where('page', $page)->get();

        if(!$descriptions)
            throw new NotFoundHttpException; 

        return $descriptions;
    }
}
