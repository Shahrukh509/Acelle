<?php $__env->startSection('title', trans('messages.not_authorized')); ?>

<?php $__env->startSection('content'); ?>
    <div class="alert alert-danger alert-styled-left">
        <span class="text-semibold">
            <?php echo e(trans('messages.not_authorized_message'), false); ?>

        </span>
    </div>
    <a href='#back' onclick='history.back()' class='btn btn-secondary'><?php echo e(trans('messages.go_back'), false); ?></a>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.core.login', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/notAuthorized.blade.php ENDPATH**/ ?>