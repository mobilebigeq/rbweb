<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use Validator;
use App\Models\Insurance_Category;
use App\Models\Insurance;
use App\Models\Centers;
use Dingo\Api\Routing\Helpers;
use DB;
use \stdClass;

// VALIDATION: change the requests to match your own file names if you need form validation

class InsuranceController extends Controller
{
    public function index($centers_id)
    {
        $data= [];
        $all_details = array();

        $center_name =  Centers::where('id', $centers_id)->first();
        $all_data['center_name'] = $center_name->center_name;

        $category_data = Insurance_Category::all();
        foreach($category_data as $key => $value){
            //  echo "Category :".$value->category;echo "<hr />";
            $cat_id = $value->id;       
            $cent_id = $centers_id;
            $center_data = Insurance::with('get_all_centers')
                                            ->where('centers_id', $cent_id)
                                            ->where('insurance_category_id',$cat_id)
                                            ->get();
            $all_data['title']=$value->title;
            $all_data['description']=$value->description;
            $all_data['image']=$value->image;
            $i = 1;

            $all_data['insurance']=array();
            foreach($center_data as $center_data){
                $all_data['insurance'][$i] = array(
                                'title' => $center_data->title,
                                'description' => $center_data->description,
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
