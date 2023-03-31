<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class UpdatePattributeRequest extends FormRequest
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
        $product_attribute= $this->route('id');

        return [
            'name'=> 'required|string|max:191',Rule::unique('product_attributes')->ignore($product_attribute),
            'slug'=> 'nullable|string|max:191',Rule::unique('product_attributes')->ignore($product_attribute),
            'status'=> 'required|nullable',
            'order'=> 'nullable',
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
            'order'=> 'Ordre'
        ];
    }

}
