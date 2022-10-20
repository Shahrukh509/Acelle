<?php

namespace Acelle\Http\Middleware;

use Closure;

class NotInstalled
{
    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure                 $next
     *
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
          // print_r('i m inside not installed middleware');exit;
        if (!isInitiated()) {


            return redirect()->action('InstallController@starting');
        }

        return $next($request);
    }
}
