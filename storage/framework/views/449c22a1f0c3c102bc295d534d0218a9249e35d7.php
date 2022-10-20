<?php if(request()->user()->customer->getPreferredPaymentGateway() !== null): ?>
    <div class="payment-box">
        <div class="header py-4 d-flex align-items-center">
            <div class="d-flex align-items-center">
                <i class="material-icons-outlined me-2 bg-<?php echo e(request()->user()->customer->getPreferredPaymentGateway()->getType(), false); ?>">
                    
                </i>
                <span class="font-weight-semibold"><?php echo e(request()->user()->customer->getPreferredPaymentGateway()->getName(), false); ?></span>
            </div>
            <div class="ml-auto">
                <a href="<?php echo e(action('AccountController@removePaymentMethod'), false); ?>" class="payment-method-remove">
                    <?php echo e(trans('messages.remove'), false); ?>

                </a>
            </div>
        </div>
        <div class="body">
            <div class="bill_info">
                <div class="line d-flex my-2">
                    <?php echo e(trans('messages.'.request()->user()->customer->getPreferredPaymentGateway()->getType().'.user.description'), false); ?>

                </div>
            </div>
        </div>
    </div>

    <a href="<?php echo e(action('AccountController@editPaymentMethod', [
        'redirect' => isset($redirect) ? $redirect : action('AccountController@billing'),
    ]), false); ?>" class="btn btn-secondary payment-method-edit mt-4">
        <?php echo e(trans('messages.change_payment_method'), false); ?>

    </a>
<?php else: ?>
    <p><?php echo e(trans('messages.have_no_payment_method'), false); ?></p>

    <a href="<?php echo e(action('AccountController@editPaymentMethod'), false); ?>"
        class="btn btn-secondary payment-method-edit">
        <?php echo e(trans('messages.add_payment_method'), false); ?>

    </a>
<?php endif; ?>

<script>
    var paymentPopup = new Popup();
    
    $('.payment-method-edit').click(function(e) {
        e.preventDefault();
        var url = $(this).attr('href');

        paymentPopup.load(url);
    });
    
    $('.payment-method-remove').click(function(e) {
        e.preventDefault();
        var url = $(this).attr('href');

        var dia = new Dialog('confirm', {
            message: '<?php echo e(trans('messages.bill.remove_payment.confirm'), false); ?>',
            ok: function() {
                $.ajax({
                url: url,
                method: 'POST',
                data: {
                    _token: CSRF_TOKEN
                },
                success: function (response) {
                    window.location.reload();
                }
            });
            },
        });
    });
</script><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/account/_payment_info.blade.php ENDPATH**/ ?>