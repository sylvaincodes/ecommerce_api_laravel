<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class UpdatePvariationattributeRequest extends FormRequest
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
            'product_variation_id' => 'required|string|max:12',
            'product_attribute_id' => 'required|string|max:12',
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
