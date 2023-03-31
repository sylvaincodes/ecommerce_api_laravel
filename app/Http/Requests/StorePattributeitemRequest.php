<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StorePattributeitemRequest extends FormRequest
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
            'product_attribute_id'=> 'required',
            'name'=> 'required|string|max:191|unique:product_attribute_items',
            'slug'=> 'nullable|string|max:191|unique:product_attribute_items',
            'status'=> 'required|nullable',
            'is_default'=> 'required',
            'order'=> 'nullable',
            'value'=> 'required|unique:product_attribute_items',
            'url'=> 'nullable',
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
            'slug'=> 'Slug',
            'value'=> 'Valeur',
            'order'=> 'Ordre'
        ];
    }

}
