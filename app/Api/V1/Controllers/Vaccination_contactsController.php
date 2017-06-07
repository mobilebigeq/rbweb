<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Models\Vaccination_contact;
use Dingo\Api\Routing\Helpers;


class Vaccination_contactsController extends Controller
{
     public function index() 
    {

    return Vaccination_contact::get();

    }
}
