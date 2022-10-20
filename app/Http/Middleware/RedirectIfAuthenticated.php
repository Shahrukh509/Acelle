<?php

namespace Acelle\Http\Middleware;

use Acelle\Providers\RouteServiceProvider;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Acelle\Http\Controllers\Controller;
use Acelle\Http\Controllers\Auth\LoginController;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use DB;
use Acelle\Model\User;
// use Illuminate\Support\Facades\Hash;

class RedirectIfAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  ...$guards
     * @return mixed
     */

    // use AuthenticatesUsers;
    public function handle(Request $request, Closure $next, ...$guards)
    { 
    // print_r($guards);exit;

        // if(!Auth::check()){
             
     
        //  $user = User::where('email','srkshah1998@gmail.com')->first();
           
        //  // print_r($user);exit;

        //  Auth::login($user);

        // }

      // $user['email'] = 'srkshah1998@gmail.com';
      //    $user['password'] = 'rootadmin';

      //    Auth::login($user);

      //   // $x = new LoginController();
      //   // $x->validateLogin($request);
        $guards = empty($guards) ? [null] : $guards;

         


        foreach ($guards as $guard) {
            
            if (Auth::guard($guard)->check()) {

             // print_r('bye');exit;
                return redirect(RouteServiceProvider::HOME);
            }
        }


        return $next($request);
    }
}
