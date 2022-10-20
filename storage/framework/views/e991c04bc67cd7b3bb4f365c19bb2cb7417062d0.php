<script>
    <?php if(null !== Session::get('orig_admin_id') && Auth::user()->admin): ?>
        notify({
            type: 'warning',
            message: `<?php echo trans('messages.current_login_as', ["name" => Auth::user()->displayName()]); ?><br><?php echo trans('messages.click_to_return_to_origin_user', ["link" => action("Admin\AdminController@loginBack")]); ?>`,
            timeout: false,
        });
    <?php endif; ?>

    <?php if(null !== Session::get('orig_admin_id') && Auth::user()->admin): ?>
        notify({
            type: 'warning',
            message: `<?php echo trans('messages.site_is_offline'); ?>`,
            timeout: false,
        });
    <?php endif; ?>
</script><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/layouts/core/_notify.blade.php ENDPATH**/ ?>