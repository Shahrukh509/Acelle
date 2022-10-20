<?php if(null !== Session::get('orig_customer_id') && Auth::user()->customer): ?>
    <a href="<?php echo e(action('CustomerController@adminArea'), false); ?>" class="user-switch-area mc-modal-control">
        <?php echo e(trans('messages.customer.admin_area'), false); ?>

    </a>
    <script>
        var AdminAreaPopup;

        $(function() {
            $('.user-switch-area').on('click', function(e) {
                e.preventDefault();
                AdminAreaPopup = new Popup({
                    url: '<?php echo e(action('CustomerController@adminArea'), false); ?>',
                });

                AdminAreaPopup.load();
            });
        });
            
    </script>
<?php endif; ?><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/layouts/core/_admin_area.blade.php ENDPATH**/ ?>