<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreCategorieRequest extends FormRequest
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
            'name'=> 'required|string|max:255',
            'description'=> 'required|string|max:255',
            'parent_id'=> 'nullable|numeric|max:10',
            'order'=> 'nullable|numeric|max:10',
            'is_default'=> 'nullable|max:2',
            'is_featured'=> 'nullable|max:2',
            'image'=> 'nullable',
            'status'=> 'required|nullable',
            'icon'=> 'nullable|max:20',
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
            // 'title'=> 'Nom',
            // 'details'=> 'Détail1',
        ];
    }

}
