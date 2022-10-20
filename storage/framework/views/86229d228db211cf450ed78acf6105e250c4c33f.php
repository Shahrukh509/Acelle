<?php $__env->startSection('title', trans('messages.contact_information')); ?>

<?php $__env->startSection('head'); ?>
    <script type="text/javascript" src="<?php echo e(URL::asset('core/js/group-manager.js'), false); ?>"></script>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('page_header'); ?>

    <div class="page-title">
        <ul class="breadcrumb breadcrumb-caret position-right">
            <li class="breadcrumb-item"><a href="<?php echo e(action("HomeController@index"), false); ?>"><?php echo e(trans('messages.home'), false); ?></a></li>
            <li class="breadcrumb-item active"><?php echo e(trans('messages.contact_information'), false); ?></li>
        </ul>
        <h1>
            <span class="text-semibold"><i class="icon-address-book3"></i> <?php echo e($user->displayName(), false); ?></span>
        </h1>
    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <?php echo $__env->make("account._menu", \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <div class="row">
        <div class="col-md-6">
            <h3 class="mb-4"><?php echo e(trans('messages.billing_information'), false); ?></h3>
            <?php if(!$customer->getDefaultBillingAddress()): ?>
                <p><?php echo e(trans('messages.has_no_billing_address'), false); ?></p>
                <div>
                    <a href="<?php echo e(action('AccountController@editBillingAddress'), false); ?>" class="btn btn-secondary billing-address-edit">
                        <?php echo e(trans('messages.add_billing_address'), false); ?>

                    </a>
                </div>
            <?php else: ?>
                <?php
                    $billingAddress = $customer->getDefaultBillingAddress();
                ?>
                <div>
                    <h4 class="mb-1 mt-0"><?php echo e($billingAddress->first_name, false); ?> <?php echo e($billingAddress->first_name, false); ?></h4>
                    <div class=""><?php echo e($billingAddress->email, false); ?></div>
                    <div class=""><?php echo e($billingAddress->phone, false); ?></div>

                    <div class="mt-4"><?php echo e($billingAddress->address, false); ?></div>
                    <div class=""><?php echo e($billingAddress->country->name, false); ?></div>
                </div>

                <div>
                    <a href="<?php echo e(action('AccountController@editBillingAddress'), false); ?>"
                    class="mt-4 pt-4 d-block billing-address-edit">
                        <?php echo e(trans('messages.edit_billing_address'), false); ?>

                    </a>
                </div>
            <?php endif; ?>
        </div>
        <div class="col-md-4">
            <h3 class="mb-4"><?php echo e(trans('messages.payment_method'), false); ?></h3>

            <?php echo $__env->make('account._payment_info', [
                'redirect' => action('AccountController@billing'),
            ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                
        </div>
    </div>
        

    <script>
        var billingPopup = new Popup();

        $('.billing-address-edit').click(function(e) {
            e.preventDefault();
            var url = $(this).attr('href');

            billingPopup.load(url);
        });
    </script>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.core.frontend', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/account/billing.blade.php ENDPATH**/ ?>