<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Backpack\CRUD\CrudTrait;

class Centers extends Model
{
    use CrudTrait;

     /*
    |--------------------------------------------------------------------------
    | GLOBAL VARIABLES
    |--------------------------------------------------------------------------
    */

    //protected $table = 'centerss';
    //protected $primaryKey = 'id';
    // public $timestamps = false;
    // protected $guarded = ['id'];
    protected $fillable = ['center_name', 'address', 'telephone','image','description','visitor_information'];
    // protected $hidden = [];
    // protected $dates = [];

    /*
    |--------------------------------------------------------------------------
    | FUNCTIONS
    |--------------------------------------------------------------------------
    */

    /*
    |--------------------------------------------------------------------------
    | RELATIONS
    |--------------------------------------------------------------------------
    */

    /*
    |--------------------------------------------------------------------------
    | SCOPES
    |--------------------------------------------------------------------------
    */

    /*
    |--------------------------------------------------------------------------
    | ACCESORS
    |--------------------------------------------------------------------------
    */

    /*
    |--------------------------------------------------------------------------
    | MUTATORS
    |--------------------------------------------------------------------------
    */

    public function speciality_masters() {
        return $this->belongsToMany('App\Models\Speciality_masters', 'center_speciality_masters', 'centers_id', 'speciality_masters_id');
    }


    public function brief_facilities() {
        return $this->belongsToMany('App\Models\Brief_facilities', 'center_brief_facilities', 'centers_id', 'brief_facilities_id');
    }


     public function our_speciality_features() {
        return $this->belongsToMany('App\Models\Our_speciality_features', 'center_speciality_features', 'centers_id', 'our_speciality_features_id');
    }


     public function doctors() {
        return $this->belongsToMany('App\Models\Doctors', 'center_doctors', 'centers_id', 'doctors_id');
    }


    public function setImageAttribute($value)
    {
        $attribute_name = "image";
        $disk = "public";
        $destination_path = "";

        $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path);
    }
}
