<?php

use Dingo\Api\Routing\Router;

/** @var Router $api */
$api = app(Router::class);

$api->version('v1', function (Router $api) {
    // $api->group(['prefix' => 'auth'], function(Router $api) {
    //     $api->post('signup', 'App\\Api\\V1\\Controllers\\SignUpController@signUp');
    //     $api->post('login', 'App\\Api\\V1\\Controllers\\LoginController@login');

    //     $api->post('recovery', 'App\\Api\\V1\\Controllers\\ForgotPasswordController@sendResetEmail');
    //     $api->post('reset', 'App\\Api\\V1\\Controllers\\ResetPasswordController@resetPassword');


    // });

    $api->group(['prefix'=>'home'], function(Router $api){
    		$api->get('books', function(){
    			return response()->json(["message"=>"Getting Highlights"]);
    		});
    		$api->get('highlights', 'App\Api\V1\Controllers\HighlightsController@index');
            $api->get('events', 'App\Api\V1\Controllers\EventsController@index');
            $api->get('specialities', 'App\Api\V1\Controllers\SpecialitiesController@index');
            $api->get('doctors', 'App\Api\V1\Controllers\DoctorsController@index');
            $api->get('categories', 'App\Api\V1\Controllers\CategoriesController@index');

            $api->get('centers', 'App\Api\V1\Controllers\CentersController@index');
            $api->get('careers', 'App\Api\V1\Controllers\CareersController@index');
    		$api->get('board', 'App\Api\V1\Controllers\BoardOfDirectorsController@index');


            $api->get('page_decription','App\Api\V1\Controllers\Page_descriptionController@index');

            $api->get('speciality_masters','App\Api\V1\Controllers\Speciality_mastersCrudController@index');

            $api->get('about','App\Api\V1\Controllers\AboutCrudController@index');

            $api->get('healthcare_service','App\Api\V1\Controllers\Healthcare_serviceCrudController@index');

            $api->get('brief_facilities','App\Api\V1\Controllers\Brief_facilitiesCrudController@index');

            $api->get('our_specialities','App\Api\V1\Controllers\Our_specialitiesCrudController@index');

            $api->get('our_speciality_features','App\Api\V1\Controllers\Our_speciality_featuresCrudController@index');

            $api->get('what_we_do_details','App\Api\V1\Controllers\What_we_do_detailsCrudController@index');

            $api->get('md_message','App\Api\V1\Controllers\Md_messageCrudController@index');

             $api->get('history_details','App\Api\V1\Controllers\History_detailsCrudController@index');

              $api->get('awards_history','App\Api\V1\Controllers\Awards_historyCrudController@index');
              $api->get('media_press_release','App\Api\V1\Controllers\Media_press_releaseCrudController@index');

              $api->get('testimonial_details','App\Api\V1\Controllers\testimonial_detailsController@index');
    //     $api->get('movie/{id}', 'App\Api\V1\Controllers\MovieController@show');
    //     $api->put('movie/{id}', 'App\Api\V1\Controllers\MovieController@update');
    //     $api->delete('movie/{id}', 'App\Api\V1\Controllers\MovieController@destroy');
    });

    // $api->group(['middleware' => 'api.auth'], function ($api) {
    //     $api->post('movie/store', 'App\Api\V1\Controllers\MovieController@store');
    //     $api->get('movie', 'App\Api\V1\Controllers\MovieController@index');
    //     $api->get('movie/{id}', 'App\Api\V1\Controllers\MovieController@show');
    //     $api->put('movie/{id}', 'App\Api\V1\Controllers\MovieController@update');
    //     $api->delete('movie/{id}', 'App\Api\V1\Controllers\MovieController@destroy');
    // });

    // $api->group(['middleware' => 'jwt.auth'], function(Router $api) {
    //     $api->get('protected', function() {
    //         return response()->json([
    //             'message' => 'Access to protected resources granted! You are seeing this text as you provided the token correctly.'
    //         ]);
    //     });

    //     $api->get('refresh', [
    //         'middleware' => 'jwt.refresh',
    //         function() {
    //             return response()->json([
    //                 'message' => 'By accessing this endpoint, you can refresh your access token at each request. Check out this response headers!'
    //             ]);
    //         }
    //     ]);
    // });

    // $api->get('books', 'App\\Api\\V1\\Controllers\\BookController@index');

    // $api->get('hello', function() {
    //     return response()->json([
    //         'message' => 'This is a simple example of item returned by your APIs. Everyone can see it.'
    //     ]);
    // });


});