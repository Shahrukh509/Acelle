<?php

namespace Acelle\Http\Middleware;

use Closure;

class Subscription
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
        $subscription = $request->user()->customer->subscription;

          // print_r('im at frontend middleware');exit;

        // Check if customer dose not have subscription
        if (!is_object($subscription) || !$subscription->isActive() || !$subscription->plan->isActive()) {
            return redirect()->action('SubscriptionController@index');
        }

        // If sending server not available

        if ($subscription->plan->useSystemSendingServer()) {
            $server = $subscription->plan->primarySendingServer();
            if (is_null($server)) {
                return response()->view('errors.general', [ 'message' => __('messages.plan.sending_server.no_sending_server_error', ['plan' => $subscription->plan->name]) ]);
            }
        }


        return $next($request);
    }
}
