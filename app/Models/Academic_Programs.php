<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Backpack\CRUD\CrudTrait;

class Academic_Programs extends Model
{
    use CrudTrait;

     /*
    |--------------------------------------------------------------------------
    | GLOBAL VARIABLES
    |--------------------------------------------------------------------------
    */

    protected $table = 'academic_programs';
    //protected $primaryKey = 'id';
    // public $timestamps = false;
    // protected $guarded = ['id'];
    protected $fillable = ['program_name', 'title', 'sub_title', 'description', 'specialities', 'number_of_seats', 'duration', 'eligibility', 'session', 'group_section_id', 'sub_group_section_id', 'page'];
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

    public function doctors() {
        return $this->belongsToMany('App\Models\Doctors', 'doctor_programs_mapping', 'doctors_id', 'academic_programs_id');
    }

    public function get_all_groups()
    {
        return $this->belongsTo('App\Models\GroupSection', 'group_section_id');
    }
    
    public function get_all_sub_groups()
    {
        return $this->belongsTo('App\Models\SubGroupSection', 'sub_group_section_id');
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
}
