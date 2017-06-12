<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use Validator;
use App\Models\Knowledge_Category;
use App\Models\Knowledge_Center;
use App\Models\Speciality_masters;
use Dingo\Api\Routing\Helpers;
use DB;
use \stdClass;

// VALIDATION: change the requests to match your own file names if you need form validation

class Knowledge_CenterController extends Controller
{
    public function index($speciality_id)
    {
        $data= [];
        $all_details = array();

        $spec_name =  Speciality_masters::where('id', $speciality_id)->first();
        $all_data['spec_name'] = $spec_name->speciality;

        $category_data = Knowledge_Category::all();
        foreach($category_data as $key => $value){
            //  echo "Category :".$value->category;echo "<hr />";
            $cat_id = $value->id;       
            $spec_id = $speciality_id;
            $center_data = Knowledge_Center::with('get_all_speciality')
                                            ->where('speciality_masters_id', $spec_id)
                                            ->where('knowledge_category_id',$cat_id)
                                            ->get();
            $all_data['category_name']=$value->category;
            $i = 1;

            $all_data['knowledge_centers']=array();
            foreach($center_data as $center_data){
                $all_data['knowledge_centers'][$i] = array(
                                'title' => $center_data->title,
                                'sub_title' => $center_data->sub_title,
                                'short_description' => $center_data->short_description,
                                'long_description' => $center_data->long_description,
                                'image' => $center_data->image,
                                'created_at' => $center_data->created_at,
                                'updated_at' => $center_data->updated_at
                );
                $i++;
            }
            //echo "<pre>";print_r($all_data);echo "</pre>";
            array_push($all_details,$all_data);            
        }
        
        return (array) $all_details;
    }


    

}
