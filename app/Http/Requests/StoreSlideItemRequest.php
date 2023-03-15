<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreSlideItemRequest extends FormRequest
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
            'slide_id'=> 'required|max:191',
            'image'=> 'nullable',
            'title'=> 'required|max:191|unique:slides_items',
            'description'=> 'required|max:191',
            'btn'=> 'nullable|max:191',
            'link'=> 'nullable|max:50',
            'order'=> 'nullable|max:30',
            'image_url'=> 'nullable',
            'subtitle'=> 'nullable|max:191',
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
