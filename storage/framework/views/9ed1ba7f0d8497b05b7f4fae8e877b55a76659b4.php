<?php $__env->startSection('title', trans('messages.subscriptions')); ?>

<?php $__env->startSection('head'); ?>
    <script type="text/javascript" src="<?php echo e(URL::asset('core/js/group-manager.js'), false); ?>"></script>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('menu_title'); ?>
    <?php echo $__env->make('subscription._title', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('menu_right'); ?>
    <?php echo $__env->make('layouts.core._top_activity_log', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('layouts.core._menu_frontend_user', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>    
    <div class="container mt-4 mb-5">
        <div class="row">
            <div class="col-md-8">
                <h2 class="mb-4"><?php echo e(trans('messages.subscription.choose_a_plan'), false); ?></h2>
                <?php if($subscription): ?>
                    <?php echo $__env->make('elements._notification', [
                        'level' => 'warning',
                        'message' => trans('messages.subscription.ended_intro', [
                            'ended_at' => Acelle\Library\Tool::formatDate($subscription->ends_at),
                            'plan' => $subscription->plan->name,
                        ])
                    ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    
                    <p><?php echo e(trans('messages.select_plan.wording'), false); ?></p>
                <?php else: ?>
                    <?php echo $__env->make('elements._notification', [
                        'level' => 'warning',
                        'message' => trans('messages.no_plan.title')
                    ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        
                    <p><?php echo e(trans('messages.select_plan.wording'), false); ?></p>
                <?php endif; ?>
                
                <?php if(empty($plans)): ?>
                    <div class="row">
                        <div class="col-md-6">
                            <?php echo $__env->make('elements._notification', [
                                'level' => 'danger',
                                'message' => trans('messages.plan.no_available_plan')
                            ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        </div>
                    </div>
                <?php else: ?>
                    <div class="new-price-box" style="margin-right: -30px">
                        <div class="">

                            <?php $__currentLoopData = $plans; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $plan): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div
                                    data-url="<?php echo e(action('SubscriptionController@orderBox', [
                                        'plan_uid' => $plan->uid,
                                    ]), false); ?>"
                                    class="new-price-item mb-3 d-inline-block plan-item
                                        <?php echo e($subscription && $subscription->plan->id == $plan->id ? 'current' : '', false); ?>

                                    "
                                    style="width: calc(33% - 20px)">
                                    <div style="height: 100px">
                                        <div class="price">
                                            <?php echo format_price($plan->price, $plan->currency->format, true); ?>

                                            <span class="p-currency-code"><?php echo e($plan->currency->code, false); ?></span>
                                        </div>
                                        <p><span class="material-icons-outlined text-muted2">
                                            restore
                                            </span> <?php echo e($plan->displayFrequencyTime(), false); ?></p>
                                    </div>
                                    <hr class="mb-2" style="width: 40px">
                                    <div style="height: 40px">
                                        <label class="plan-title fs-5 fw-600 mt-0"><?php echo e($plan->name, false); ?></label>
                                    </div>

                                    <div style="height: 130px">
                                        <p class="mt-4"><?php echo e($plan->description, false); ?></p>
                                    </div>

                                    <span class="time-box d-block text-center small py-2 fw-600">
                                        <div class="mb-1">
                                            <span><?php echo e($plan->displayTotalQuota(), false); ?> <?php echo e(trans('messages.sending_total_quota_label'), false); ?></span>
                                        </div>
                                        <div>
                                            <span><?php echo e($plan->displayMaxSubscriber(), false); ?> <?php echo e(trans('messages.contacts'), false); ?></span>
                                        </div>
                                    </span>

                                    <a
                                        link-method="POST"
                                        href="<?php echo e(action('SubscriptionController@init', ['plan_uid' => $plan->uid]), false); ?>"
                                        class="btn btn-primary rounded-3 d-block mt-4 shadow-sm">
                                            <?php echo e(trans('messages.plan.select'), false); ?>

                                    </a>
                                </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                        </div>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </div>

    <script>
        var SubscriptionSelectPlan = {
            // orderBox: null,

            // getOrderBox: function() {
            //     if (this.orderBox == null) {
            //         this.orderBox = new Box($('.order-box'), '<?php echo e(action('SubscriptionController@orderBox'), false); ?>');
            //     }
            //     return this.orderBox;
            // }
        }

        $(function() {
            // SubscriptionSelectPlan.getOrderBox().load();

            var manager = new GroupManager();
            $('.plan-item').each(function() {
                manager.add({
                    box: $(this),
                    url: $(this).attr('data-url')
                });
            });

            manager.bind(function(group, others) {
                group.box.on('click', function() {
                    group.box.addClass('current');

                    others.forEach(function(other) {
                        other.box.removeClass('current');
                    });

                    // load order
                    // SubscriptionSelectPlan.getOrderBox().load(group.url);
                })
            });
        });
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.core.frontend_dark', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/subscription/selectPlan.blade.php ENDPATH**/ ?>