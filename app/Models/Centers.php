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
    protected $fillable = ['center_name', 'address', 'telephone','image','description','visitor_information', 'lat_long'];
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
        return $this->belongsToMany('App\Models\Doctors', 'doctor_hospitals', 'hospital_id', 'doctor_id');
    }


    //  public function doctors() {
    //     return $this->belongsToMany('App\Models\Doctors', 'center_doctors', 'centers_id', 'doctors_id');
    // }


    // public function setImageAttribute($value)
    // {
    //     $attribute_name = "image";
    //     $disk = "public";
    //     $destination_path = "";

    //     $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path);
    // }

    public function setImageAttribute($value)
    {
        $attribute_name = "image";
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
