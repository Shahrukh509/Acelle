<div class="row">
    <div class="col-md-12">
        <div class="tabbable pb-2">
            <ul class="nav nav-tabs nav-tabs-top nav-underline mb-4">
                <li rel0="AccountController/profile" class="nav-item">
                    <a href="<?php echo e(action("AccountController@profile"), false); ?>" class="nav-link">
                        <span class="material-icons-outlined">
face
</span> <?php echo e(trans('messages.my_profile'), false); ?>

                    </a>
                </li>
                <li rel0="AccountController/contact" class="nav-item">
                    <a href="<?php echo e(action("AccountController@contact"), false); ?>" class="nav-link">
                        <span class="material-icons-outlined">
maps_home_work
</span> <?php echo e(trans('messages.contact_information'), false); ?>

                    </a>
                </li>
                <li rel0="AccountController/billing" class="nav-item">
                    <a href="<?php echo e(action("AccountController@billing"), false); ?>" class="nav-link">
                        <span class="material-icons-outlined">
credit_card
</span> <?php echo e(trans('messages.billing'), false); ?>

                    </a>
                </li>
                <li class="nav-item"
                    rel0="AccountController/subscription"
                    rel1="PaymentController"
                    rel2="AccountController/subscriptionNew"
                    rel3="SubscriptionController"
                    class="position-relative"
                >
                    <a href="<?php echo e(action("SubscriptionController@index"), false); ?>" class="nav-link position-relative <?php echo e(isset($tab) && $tab == 'subscription' ? 'active' : '', false); ?>">
                        <span class="material-icons-outlined">
assignment
</span> <?php echo e(trans('messages.subscription'), false); ?>

                        <?php if(Auth::user()->customer->hasSubscriptionNotice()): ?>
                            <i class="material-icons-round tabs-warning-icon text-danger">info</i>
                        <?php endif; ?>
                    </a>
                </li>
                <li class="nav-item"
                    rel0="AccountController/logs">
                    <a href="<?php echo e(action("AccountController@logs"), false); ?>" class="nav-link">
                        <span class="material-icons-outlined">
restore
</span> <?php echo e(trans('messages.logs'), false); ?>

                    </a>
                </li>
                <?php if(Auth::user()->customer->canUseApi()): ?>
                    <li class="nav-item" rel0="AccountController/api">
                        <a href="<?php echo e(action("AccountController@api"), false); ?>" class="nav-link">
                            <span class="material-icons-outlined">
vpn_key
</span> <?php echo e(trans('messages.api_token'), false); ?>

                        </a>
                    </li>
                <?php endif; ?>
            </ul>
        </div>
    </div>
</div>
<?php /**PATH C:\xampp\htdocs\acellemail\resources\views/account/_menu.blade.php ENDPATH**/ ?>