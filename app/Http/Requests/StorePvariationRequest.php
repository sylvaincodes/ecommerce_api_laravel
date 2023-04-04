<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StorePvariationRequest extends FormRequest
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
        'price' => 'required|numeric',
        'price_discount' => 'nullable|numeric|max:12',
        'date_debut_discount' => 'nullable|date|max:12',
        'date_fin_discount' => 'nullable|date|max:12',
        'stock_status' => 'required|string|max:25',
        'weight' => 'nullable|string|max:10',
        'lenght' => 'nullable|string|max:10',
        'wide' => 'nullable|string|max:10',
        'height' => 'nullable|string|max:10',
        'url' => 'nullable|max:1000',
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
