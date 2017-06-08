<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\About;
use App\Models\Page_description;
use App\Models\Md_message;
use App\Models\Brief_facilities;
use App\Models\DescriptionSection;
use App\Models\Awards_history;
use App\Models\Doctor_quality_accreditation_mapping;
use App\Models\History_details;
use Dingo\Api\Routing\Helpers;

// VALIDATION: change the requests to match your own file names if you need form validation

class AboutController extends Controller
{

    public function index() 
    {
        return About::get();
    }

    public function GetAboutUsDetails(){
        $data= [];
        
        $data['left_slider_content'] = Page_description::where('page', 'about-us')->get();
        $data['md_message_content'] = Md_message::where('page', 'about-us')->first();
        $data['factsheet_content'] = Brief_facilities::where('page', 'about-center')->get();
        $data['cutting_edge_medical_content'] = DescriptionSection::where('page', 'about-us')->first();
        $data['hospital_awards_content'] = Awards_history::where('awards_type', 'hospital-awards')->get();
        $data['doctors_awards_content'] = Awards_history::where('awards_type', 'doctors-awards')->get();

        $data['media_content'] = Page_description::where('page', 'media')->get();
        $data['channel_content'] = Page_description::where('page', 'channel')->get();
        $data['careers_content'] = Page_description::where('page', 'careers')->get();
        $data['history_content'] = History_details::where('page', 'history')->first();
        $data['management_content'] = Md_message::where('page', 'management')->first();
        $data['quality_accreditation_content'] = Doctor_quality_accreditation_mapping::with('doctors')->first();

        return $data;
    }


}
