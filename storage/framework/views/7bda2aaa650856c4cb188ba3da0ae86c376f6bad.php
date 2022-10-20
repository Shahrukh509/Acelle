<script>
    <?php if(
        is_object(\Auth::user()->customer) &&
        \Auth::user()->customer->getOption("sending_server_option") == \Acelle\Model\Plan::SENDING_SERVER_OPTION_OWN &&
        !\Auth::user()->customer->activeSendingServers()->count()
    ): ?>
        notify({
            type: 'warning',
            message: `<?php echo trans('messages.not_have_any_customer_sending_server', [
                'link' => action('SendingServerController@select'),
            ]); ?>`,
            timeout: false,
        });
    <?php endif; ?>

    <?php if(is_object(\Auth::user()->customer) &&
        !is_object(\Auth::user()->customer->subscription)
    ): ?>
        notify({
            type: 'warning',
            message: `<?php echo trans('messages.not_have_any_plan_notification', [
                'link' => action('SubscriptionController@index'),
            ]); ?>`,
            timeout: false,
        });
    <?php endif; ?>
</script><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/layouts/core/_notify_frontend.blade.php ENDPATH**/ ?>