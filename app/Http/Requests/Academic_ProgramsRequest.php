<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class Academic_ProgramsRequest extends \Backpack\CRUD\app\Http\Requests\CrudRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        // only allow updates if the user is logged in
        return \Auth::check();
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'program_name' => 'required|min:5|max:255',
            'title' => 'required|min:5|max:255',
            'sub_title' => 'required',
            'description' => 'required|min:5|max:255',
            'specialities' => 'required',
            'number_of_seats' => 'required|numeric|min:1'
        ];
    }

    /**
     * Get the validation attributes that apply to the request.
     *
     * @return array
     */
    public function attributes()
    {
        return [
            //
        ];
    }

    /**
     * Get the validation messages that apply to the request.
     *
     * @return array
     */
    public function messages()
    {
        return [
            //
        ];
    }
}
