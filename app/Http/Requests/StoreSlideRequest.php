<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreSlideRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

     /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'=> 'required|string|max:191|unique:slides',
            'description'=> 'required|string|max:191',
            'key'=> 'required|string|max:20|unique:slides',
            'status'=> 'required|string|max:30',
        ];
    }

    /**
     * Get custom attributes for validator errors.
     *
     * @return array
     */
    public function attributes()
    {
        return [
            'name'=> 'Nom',
            'key'=> 'Clé',
            'description'=> 'Description',
            'status'=> 'Status',
        ];
    }

}
