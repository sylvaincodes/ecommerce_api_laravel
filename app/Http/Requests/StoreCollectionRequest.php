<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreCollectionRequest extends FormRequest
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
            'name'=> 'string|max:191|unique:collections',
            'description'=> 'required|string|max:191',
            'status'=> 'required|nullable',
            // 'is_featured'=> 'present',
            'logo'=> 'nullable',
            'order'=> 'nullable',
            'parent_id'=> 'nullable',
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
            'description'=> 'Description',
            'order'=> 'Ordre'
        ];
    }

}
