<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class UpdateSlideRequest extends FormRequest
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
        $slide= $this->route('slide');
        return [
            'name'=> 'required|string|max:191',Rule::unique('slides')->ignore($slide->id),
            'description'=> 'nullable|string|max:191',
            'key'=> 'required|string|max:20',Rule::unique('slides')->ignore($slide->id),
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
