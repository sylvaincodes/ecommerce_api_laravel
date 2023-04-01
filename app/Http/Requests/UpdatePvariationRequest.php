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
        'price' => 'required|string|max:12',
        'price_discount' => 'nullable|string|max:12',
        'date_debut_discount' => 'nullable|string|max:12',
        'date_fin_discount' => 'nullable|string|max:12',
        'stock_status' => 'required|string|max:25',
        'weight' => 'nullbale|string|max:10',
        'lenght' => 'nullbale|string|max:10',
        'wide' => 'nullbale|string|max:10',
        'height' => 'nullbale|string|max:10',
        'url' => 'nullbale|string|max:10',
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
