<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class PasswordRule implements Rule
{
    public function passes($attribute, $value)
    {
        $pattern = '/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$/';
        if (preg_match($pattern, $value)) {
            return true;
        }

        return false;
    }

    public function message()
    {
        return "Şifrenizde büyük,küçük harf,sayı ve özel karakter bulunmalıdır";
    }
}
