<?php

namespace App\Http\Requests\Api;

use App\Rules\PasswordRule;
use Illuminate\Foundation\Http\FormRequest;

class CompanyRegisterRequest extends FormRequest
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
            "name" => "required",
            "lastname" => "required",
            "company_name" => "required",
            "site_url" => "required",
            "email" => "required|email|unique:companies",
            "password" => [
                "required",
                "min:6",
                new PasswordRule()
            ],
        ];
    }
}
