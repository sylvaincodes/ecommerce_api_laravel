<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class UpdatePattributeitemRequest extends FormRequest
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

            'product_attribute_id'=> 'required',
            'name'=> 'required|string|max:191',Rule::unique('product_attribute_items')->ignore($product_attribute),
            'slug'=> 'nullable|string|max:191',Rule::unique('product_attribute_items')->ignore($product_attribute),
            'value'=> 'required',Rule::unique('product_attribute_items')->ignore($product_attribute),
            'status'=> 'required|nullable',
            'is_default'=> 'required',
            'order'=> 'nullable',
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
            'order'=> 'Ordre'
        ];
    }

}
