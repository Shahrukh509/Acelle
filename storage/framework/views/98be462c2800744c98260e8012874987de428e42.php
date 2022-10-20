<div class="d-flex">
    <h3 class="me-auto">
        <div class="mb-4">
            <?php echo e(trans('messages.activities'), false); ?>

        </div>
    </h3>
    <div>
        <a href="<?php echo e(action("AccountController@logs"), false); ?>" class="btn btn-info"><?php echo e(trans('messages.all_activities'), false); ?></a>
    </div>
</div>  

<?php if(Auth::user()->customer->logs()->count() == 0): ?>
    <div class="empty-list">
        <span class="material-icons-outlined">
            auto_awesome
        </span>
        <span class="line-1">
            <?php echo e(trans('messages.no_activity_logs'), false); ?>

        </span>
    </div>
<?php else: ?>
    <div class="action-log-box">
        <!-- Timeline -->
        <div class="">
            <div class="">
                <?php $__currentLoopData = Auth::user()->customer->logs()->take(20)->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $log): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <!-- Sales stats -->
                    <div class="d-flex mb-3">
                        <div class="me-3">
                            <a href="<?php echo e(action('AccountController@profile'), false); ?>"><img width="40px" class="rounded-circle shadow-sm" src="<?php echo e($log->customer->user->getProfileImageUrl(), false); ?>" alt=""></a>
                        </div>

                        <div class="card px-0 shadow-sm container-fluid">
                            <div class="card-body pt-2">
                                <div class="d-flex align-items-center pt-1">
                                    <label class="panel-title text-semibold my-0 fw-600"><?php echo e($log->customer->user->displayName(), false); ?></label>
                                    <div class="d-flex align-items-center ms-auto text-muted small">
                                        <span class="material-icons-outlined ms-auto me-1 small">
                                            history
                                        </span>
                                        <div class="">
                                            <span class="heading-text"><i class="icon-history position-left text-success"></i> <?php echo e(Tool::dateTime($log->created_at)->diffForHumans(), false); ?></span>
                                        </div>
                                    </div>
                                </div>
                                <p class="mb-0 mt-1 small"><?php echo $log->message(); ?></p>
                            </div>
                        </div>
                    </div>
                    <!-- /sales stats -->
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
    </div>

    <div class="text-center mt-4">
        <a href="<?php echo e(action("AccountController@logs"), false); ?>" class="btn btn-info"><?php echo e(trans('messages.all_activities'), false); ?></a>
    </div>
<?php endif; ?><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/account/activity.blade.php ENDPATH**/ ?>