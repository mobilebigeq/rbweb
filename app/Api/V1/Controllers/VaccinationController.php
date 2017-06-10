<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Vaccination_contact;
use App\Models\Vaccination_details;
use Dingo\Api\Routing\Helpers;


class VaccinationController extends Controller
{
    public function index($page) 
    {
        $data = [];

        $data['vaccination_detail'] = Vaccination_details::where('page', $page)->get();
        $data['vaccination_contact'] = Vaccination_contact::where('page', $page)->get();
        

        return $data;

    }
}