<?php $__env->startSection('title'); ?>
    <?php echo e(trans('messages.edit_payment_method'), false); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <h4 class="mb-2 mt-0"><?php echo e(trans('messages.payment.choose_payment'), false); ?></h4>
    <div class="mb-4"><?php echo trans('messages.payment.choose_payment.desc'); ?></div>
    <form class="edit-payment" action="<?php echo e(action('AccountController@editPaymentMethod'), false); ?>"
        method="POST">
        <?php echo e(csrf_field(), false); ?>


        <input type="hidden" name="return_url" value="<?php echo e($redirect, false); ?>" />

        <div class="sub-section mb-30 choose-payment-methods">      
            <?php $__currentLoopData = Acelle\Library\Facades\Billing::getEnabledPaymentGateways(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $gateway): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="choose-payment-method">
                    <div class="d-flex p-3 choose-payment choose-payment-<?php echo e($gateway->getType(), false); ?>">
                        <div class="text-end pl-2 pr-2">
                            <div class="d-flex align-items-center form-group-mb-0 pt-1" style="width: 30px">
                                <?php echo $__env->make('helpers.form_control', [
                                    'type' => 'radio2',
                                    'name' => 'payment_method',
                                    'value' => request()->user()->customer->getPreferredPaymentGateway() ? request()->user()->customer->getPreferredPaymentGateway()->getType() : '',
                                    'label' => '',
                                    'help_class' => 'setting',
                                    'rules' => ['payment_method' => 'required'],
                                    'options' => [
                                        ['value' => $gateway->getType(), 'text' => ''],
                                    ],
                                ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                <div class="check"></div>
                            </div>
                        </div>
                        <div class="mr-auto pr-4">
                            <h4 class="font-weight-semibold mb-1"><?php echo e($gateway->getName(), false); ?></h4>
                            <p class="mb-3"><?php echo e(trans('messages.'.$gateway->getType().'.user.description'), false); ?></p>
                        </div>                        
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
        
        <div class="sub-section">
            <div class="row">
                <div class="col-md-6">
                    <button link-method="POST"
                        class="btn btn-secondary px-4">
                            <?php echo e(trans('messages.save_payment_method'), false); ?>

                    </button>
                </div>
                <div class="col-md-6">
                    
                </div>
            </div>
        </div>     
        
    </form>

    <script>
        $(function() {
            $('.edit-payment').on('submit', function(e) {
                if (!$('.choose-payment-methods>div [type=radio]:checked').length) {
                    e.preventDefault();

                    new Dialog('alert', {
                        message: '<?php echo e(trans('messages.subscription.no_payment_method_selected'), false); ?>',
                        title: "<?php echo e(trans('messages.notify.error'), false); ?>"
                    });
                }
            });

            var manager = new GroupManager();

            $('.choose-payment-methods .choose-payment-method').each(function() {
                manager.add({
                    radio: $(this).find('input[name=payment_method]'),
                    box: $(this)
                });
            });

            manager.bind(function(group, others) {
                var doCheck = function() {
                    var checked = group.radio.is(':checked');
                    
                    if (checked) {
                        others.forEach(function(other) {
                            other.box.removeClass("current");
                        });
                        group.box.addClass("current");
                    } else {
                        group.box.removeClass("current");
                    }
                };

                group.radio.on('change', function() {
                    doCheck();
                });

                group.box.on('click', function() {
                    group.radio.prop('checked', true);

                    doCheck();
                });

                doCheck();
            });
        });
        
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.popup.small', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/account/editPaymentMethod.blade.php ENDPATH**/ ?>