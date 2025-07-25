<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;

class Authenticate extends Middleware
{
    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return string
     */
    protected function redirectTo(Request $request)
    {
        if (! $request->expectsJson()) {

            if(Route::is('student.*')){
                return route('student.login');
            }

            if(Route::is('admin.*')){
                return route('login');
            }

            return route('login');
        }
    }
}
