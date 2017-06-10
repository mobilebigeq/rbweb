<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Backpack\CRUD\CrudTrait;

class Doctors extends Model
{
    use CrudTrait;

     /*
    |--------------------------------------------------------------------------
    | GLOBAL VARIABLES
    |--------------------------------------------------------------------------
    */

    //protected $table = 'doctorss';
    //protected $primaryKey = 'id';
    // public $timestamps = false;
    // protected $guarded = ['id'];
    protected $fillable = ['name', 'qualification', 'designation', 'info', 'photo', 'profile'];
    // protected $hidden = [];
    // protected $dates = [];

    /*
    |--------------------------------------------------------------------------
    | FUNCTIONS
    |--------------------------------------------------------------------------
    */

    // public function getHospitals() {
    //     //$hospitals = array();
    //     $hl = $this->hospitals;
    //     var_dump($hl);
    //     die();
    //     foreach($hl as $h) {
    //         $hospitals[] = $h->title;
    //     }
    //     return implode(',', $hospitals);
    // }


    // public function getDoctor_specializations() {
    //     //$hospitals = array();
    //     $hl = $this->doctor_specializations;
    //     var_dump($hl);
    //     die();
    //     foreach($hl as $h) {
    //         $doctor_specializations[] = $h->specialization;
    //     }
    //     return implode(',', $doctor_specializations);
    // }


    //  public function getspeciality_masters() {
    //     //$hospitals = array();
    //     $hl = $this->speciality_masters;
    //     var_dump($hl);
    //     die();
    //     foreach($hl as $h) {
    //         $speciality_masters[] = $h->speciality;
    //     }
    //     return implode(',', $speciality_masters);
    // }
    /*
    |--------------------------------------------------------------------------
    | RELATIONS
    |--------------------------------------------------------------------------
    */

    public function centers() {
        return $this->belongsToMany('App\Models\Centers', 'doctor_hospitals', 'doctor_id', 'hospital_id');
    }



    public function doctor_specializations() {
        return $this->belongsToMany('App\Models\DoctorSpecialization', 'doctors_specialization_mapping', 'doctors_id', 'doctor_specializations_id');
    }


    public function speciality_masters() {
        return $this->belongsToMany('App\Models\Speciality_masters', 'doctor_speciality_masters', 'doctors_id', 'doctor_specialization_masters_id');
    }


    public function our_speciality_features() {
        return $this->belongsToMany('App\Models\Our_speciality_features', 'doctor_speciality_features', 'doctors_id', 'our_speciality_features_id');
    }


     public function awards_history() {
        return $this->belongsToMany('App\Models\Awards_history', 'doctor_awards_history', 'doctors_id', 'awards_history_id');
    }
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
    public function setPhotoAttribute($value)
    {
        $attribute_name = "photo";
        $disk = "uploads";
        $destination_path = "";

        // if the image was erased
        if ($value==null) {
            // delete the image from disk
            \Storage::disk($disk)->delete($this->image);

            // set null in the database column
            $this->attributes[$attribute_name] = null;
        }

        // if a base64 was sent, store it in the db
        if (starts_with($value, 'data:image'))
        {
            // 0. Make the image
            $image = \Image::make($value);
            // 1. Generate a filename.
            $filename = md5($value.time()).'.jpg';
            // 2. Store the image on disk.
            \Storage::disk($disk)->put($destination_path.'/'.$filename, $image->stream());
            // 3. Save the path to the database
            $this->attributes[$attribute_name] = $destination_path.'/uploads/'.$filename;
        }
    }



    public function setProfileAttribute($value)
    {
        $attribute_name = "profile";
        $disk = "uploads";
        $destination_path = "";

        // if the image was erased
        if ($value==null) {
            // delete the image from disk
            \Storage::disk($disk)->delete($this->image);

            // set null in the database column
            $this->attributes[$attribute_name] = null;
        }

        // if a base64 was sent, store it in the db
        if (starts_with($value, 'data:image'))
        {
            // 0. Make the image
            $image = \Image::make($value);
            // 1. Generate a filename.
            $filename = md5($value.time()).'.jpg';
            // 2. Store the image on disk.
            \Storage::disk($disk)->put($destination_path.'/'.$filename, $image->stream());
            // 3. Save the path to the database
            $this->attributes[$attribute_name] = $destination_path.'/uploads/'.$filename;
        }
    }
}
