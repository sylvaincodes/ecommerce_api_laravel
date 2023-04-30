<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class UpdatePvariationRequest extends FormRequest
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
            // 'product_id' => 'required',
            'price' => 'required|digits_between:1,10',
            'price_discount' => 'nullable|digits_between:1,10',
            'date_debut_discount' => 'nullable|date|max:191',
            'date_fin_discount' => 'nullable|date|max:191',
            'stock_status' => 'required|string|max:191',
            'weight' => 'nullable|digits_between:1,10',
            'lenght' => 'nullable|digits_between:1,10',
            'wide' => 'nullable|digits_between:1,10',
            'height' => 'nullable|digits_between:1,10',
            'url' => 'required|nullable|max:2000',
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
            'price' => 'Prix',
            'price_discount' => 'Prix promotionnel',
            'date_debut_discount' => 'Date début du prix promotionnel',
            'date_fin_discount' => 'Date fin du prix promotionnel',
            'stock_status' => 'Stock status',
            'weight' => 'Poids',
            'lenght' => 'Longueur',
            'wide' => 'Largeur',
            'height' => 'Hauteur',
            'url' => 'Url',
        ];
    }

}
