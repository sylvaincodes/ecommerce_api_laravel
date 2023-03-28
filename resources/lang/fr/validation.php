<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | The following language lines contain the default error messages used by
    | the validator class. Some of these rules have multiple versions such
    | as the size rules. Feel free to tweak each of these messages here.
    |
    */

    'accepted' => 'Le champ :attribute doit être accepté.',
    'active_url' => 'Le champ :attribute n\'est pas valide.',
    'after' => 'Le champ :attribute doit être supérieur à :date.',
    'after_or_equal' => 'Le champ :attribute doit être supérieur ou égale à :date.',
    'alpha' => 'Le champ :attribute ne doit contenir que des lettres.',
    'alpha_dash' => 'Le champ :attribute peut seulement contenir des lettres , chiffres et caractères spéciaux.',
    'alpha_num' => 'Le champ :attribute peut seulement contenir des lettres , chiffres.',
    'array' => 'Le champ :attribute doit être un tableau.',
    'before' => 'Le champ :attribute doit être inférieur à :date.',
    'before_or_equal' => 'Le champ :attribute doit être inférieur ou égale à :date.',
    'entre' => [
        'numeric' => 'Le champ :attribute doit être entre :min et :max.',
        'file' => 'Le champ :attribute doit être entre :min et :max kilobytes.',
        'string' => 'Le champ :attribute doit être entre :min et :max caractères.',
        'array' => 'Le champ :attribute doit être entre :min et :max élements.',
    ],
    'boolean' => 'Le champ :attribute doit être true ou false.',
    'confirmed' => 'Les champs :attribute ne correspondent pas .',
    'date' => 'Le champ :attribute n\'est pas valide.',
    'date_equals' => 'Le champ :attribute doit être une date égale à :date.',
    'date_format' => 'Le champ :attribute 
    ne correspond pas au format :format.',
    'different' => 'Le champ :attribute et :other doit être different.',
    'digits' => 'Le champ :attribute doit être :digits chiffres.',
    'digits_entre' => 'Le champ :attribute doit être entre :min et :max chiffres.',
    'dimensions' => 'Le champ :attribute a des dimensions d\'image non valides.',
    'distinct' => 'Le champ :attribute a une valeur en double.',
    'email' => 'Le champ :attribute doit être une adresse e-mail valide.',
    'ends_with' => 'Le champ :attribute doit se terminer par l\'un des éléments suivants :values.',
    'exists' => 'Le champ choisi :attribute n\'est pas valide.',
    'file' => 'Le champ :attribute doit être un fichier.',
    'filled' => 'Le champ :attribute doit être renseigné.',
    'gt' => [
        'numeric' => 'Le champ :attribute doit être plus grand que :value.',
        'file' => 'Le champ :attribute doit être plus grand que :value kilobytes.',
        'string' => 'Le champ :attribute doit être plus grand que :value caractères.',
        'array' => 'Le champ :attribute doit avoir plus que :value élements.',
    ],
    'gte' => [
        'numeric' => 'Le champ :attribute doit être plus grand que ou égale à :value.',
        'file' => 'Le champ :attribute doit être plus grand que ou égale à :value kilobytes.',
        'string' => 'Le champ :attribute doit être plus grand que ou égale à :value caractères.',
        'array' => 'Le champ :attribute doit être plus grand que :value élements ou plus.',
    ],
    'image' => 'Le champ :attribute doit être une image.',
    'in' => 'Le champ selectionné :attribute n\'est pas valide.',
    'in_array' => 'Le champ :attribute  n\'existe pas in :other.',
    'integer' => 'Le champ :attribute doit être an integer.',
    'ip' => 'Le champ :attribute doit être un valide IP address.',
    'ipv4' => 'Le champ :attribute doit être un valide IPv4 address.',
    'ipv6' => 'Le champ :attribute doit être un valide IPv6 address.',
    'json' => 'Le champ :attribute doit être un valide JSON string.',
    'lt' => [
        'numeric' => 'Le champ :attribute doit être moins que :value.',
        'file' => 'Le champ :attribute doit être moins que :value kilobytes.',
        'string' => 'Le champ :attribute doit être moins que :value caractères.',
        'array' => 'Le champ :attribute doit être moins que :value élements.',
    ],
    'lte' => [
        'numeric' => 'Le champ :attribute doit être moins que ou égale à :value.',
        'file' => 'Le champ :attribute doit être moins que ou égale à :value kilobytes.',
        'string' => 'Le champ :attribute doit être moins que ou égale à :value caractères.',
        'array' => 'Le champ :attribute must not have more than :value élements.',
    ],
    'max' => [
        'numeric' => 'Le champ :attribute peut ne pas être plus grand que :max.',
        'file' => 'Le champ :attribute peut ne pas être plus grand que :max kilobytes.',
        'string' => 'Le champ :attribute peut ne pas être plus grand que :max caractères.',
        'array' => 'Le champ :attribute may not have more than :max élements.',
    ],
    'mimes' => 'Le champ :attribute doit être de type fichier: :values.',
    'mimetypes' => 'Le champ :attribute doit être de type fichier: :values.',
    'min' => [
        'numeric' => 'Le champ :attribute doit être de  :min minimum.',
        'file' => 'Le champ :attribute doit être de  :min kilobytes minimum.',
        'string' => 'Le champ :attribute doit contenir au moins :min caractères.',
        'array' => 'Le champ :attribute doit contenir au moins least :min élements.',
    ],
    'not_in' => 'Le format du champ selectionné :attribute n\'est pas valide.',
    'not_regex' => 'Le format du champ :attribute n\'est pas valide.',
    'numeric' => 'Le champ :attribute doit être un nombre.',
    'password' => 'Le champ password est incorrecte.',
    'present' => 'Le champ :attribute  doit être présent.',
    'regex' => 'Le format du champ :attribute n\'est pas valide.',
    'required' => 'Le champ :attribute est obligatoire.',
    'required_if' => 'Le champ :attribute est obligatoire quet :other is :value.',
    'required_unless' => 'Le champ :attribute est obligatoire unless :other is in :values.',
    'required_with' => 'Le champ :attribute est obligatoire quet :values existe.',
    'required_with_all' => 'Le champ :attribute est obligatoire quet :values are present.',
    'required_without' => 'Le champ :attribute est obligatoire quet :values is not present.',
    'required_without_all' => 'Le champ :attribute est obligatoire quet none of :values are present.',
    'same' => 'Le champ :attribute et :other must match.',
    'size' => [
        'numeric' => 'Le champ :attribute doit être :size.',
        'file' => 'Le champ :attribute doit être :size kilobytes.',
        'string' => 'Le champ :attribute doit être :size caractères.',
        'array' => 'Le champ :attribute must contain :size élements.',
    ],
    'starts_with' => 'Le champ :attribute must start with one of the following: :values.',
    'string' => 'Le champ :attribute doit être un caractère',
    'timezone' => 'Le champ :attribute doit être un valide zone.',
    'unique' => 'Le champ :attribute doit être unique.',
    'uploaded' => 'Le champ :attribute a mal fonctionné.',
    'url' => 'Le format du champ :attribute n\'est pas valide.',
    'uuid' => 'Le champ :attribute doit être un valide UUID.',

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | Here you may specify custom validation messages for attributes using the
    | convention "attribute.rule" to name the lines. This makes it quick to
    | specify a specific custom language line for a given attribute rule.
    |
    */

    'custom' => [
        'attribute-name' => [
            'rule-name' => 'custom-message',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Attributes
    |--------------------------------------------------------------------------
    |
    | The following language lines are used to swap our attribute placeholder
    | with something more reader friendly such as "E-Mail Address" instead
    | of "email". This simply helps us make our message more expressive.
    |
    */

    'attributes' => [],

];
