<?php

namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use JWTAuth;
use App\Models\HomeEvents;
use App\Http\Controllers\Controller;
use Dingo\Api\Routing\Helpers;
use DB;

class EventsController extends Controller
{
    //
	use Helpers;

  	public function index()
	{
	    return HomeEvents::get();
	}

	public function events($type)
	{
		$events = HomeEvents::where('type','=',$type)->get();
		
		if(!$events)
				throw new NotFoundHttpException;

		return $events;
	}

	public function EventsSearchByDate($date)
	{
		$from_date = date('Y-m-d', strtotime($date));
		$no_days = 30;
		$to_date = date("Y-m-d", strtotime($from_date . " + ".$no_days."days"));
		
		$events = HomeEvents::where(DB::Raw('date(event_date)'),'>=',$from_date)->where(DB::Raw('date(event_date)'),'<=',$to_date)->where('type','=','events')->get();
		
		if(!$events)
				throw new NotFoundHttpException;

		return $events;
	}

}
