<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreOrderRequest extends FormRequest
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
            'checkout_session_id'=> 'required|string',
            'products'=> 'required',
            'cart_id'=> 'required|string',
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
            'checkout_session_id'=> 'Session checkout ID',
            'products'=> 'Liste des produits du panier',
            'cart_id'=> 'ID du panier'
        ];
    }

    /**
 * Get the error messages for the defined validation rules.
 *
 * @return array<string, string>
 */
public function messages(): array
{
    return [
        'checkout_session_id.required' => 'A checkout_session_id is required',
        'products.required' => 'A products is required',
        'cart_id.required' => 'A cart_id is required',
    ];
}


}
