<?php

namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Doctors;
use App\Models\Doctor_quality_accreditation_mapping;
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

	public function DoctorQualityAccreditation(){
		return Doctor_quality_accreditation_mapping::with('doctors')->get();
	}
}
