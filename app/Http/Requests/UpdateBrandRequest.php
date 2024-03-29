<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class UpdateBrandRequest extends FormRequest
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
        $id= $this->route('id');
        return [
            'name'=> 'required|string|max:191',Rule::unique('brands')->ignore($id),
            'description'=> 'required|string|max:191',
            'status'=> 'required|nullable',
            'website'=> 'nullable',
            'image'=> 'nullable',
            'url'=> 'nullable',
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
            'name' => 'nom',
            'description' => 'description',
        ];
    }

    /**
     * Get the error messages for the defined validation rules.
     *
     * @return array
     */
    public function messages()
    {
        return [
            'name.required' => 'Le champ nom est obligatoire',
            'description.required' => 'La description est obligatoire',
        ];
    }

}
