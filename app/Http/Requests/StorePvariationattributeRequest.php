<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StorePvariationattributeRequest extends FormRequest
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
            'product_variation_id' => 'required|max:12',
            'product_attribute_item_id' => 'required|max:12',
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
        'product_attribute_item_id' => 'Attribut id',
       
        ];
    }

}
