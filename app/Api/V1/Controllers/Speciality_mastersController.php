<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Speciality_masters;
use Dingo\Api\Routing\Helpers;
use DB;

// VALIDATION: change the requests to match your own file names if you need form validation


class Speciality_mastersController extends Controller
{

    public function index() 
    {
        return Speciality_masters::get();
    }

    public function DoctorSpecialityMasterByName($name)
	{
	    return Speciality_masters::with('doctors', 'doctors.centers')->where('speciality', $name)->get();
	}

    public function DoctorSpecialityMasterByID($id)
	{
        
	    return Speciality_masters::with('doctors')->where('id', $id)->get();
        
	}
   
}
