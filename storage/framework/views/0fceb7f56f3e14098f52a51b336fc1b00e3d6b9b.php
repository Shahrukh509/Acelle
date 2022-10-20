<script>
    <?php $__currentLoopData = ['success']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $msg): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <?php if(Session::has('alert-' . $msg)): ?>
            $(document).ready(function() {
                notify({
                    type: "<?php echo e($msg, false); ?>",
                    title: '<?php echo e(trans('messages.notify.' . $msg), false); ?>',
                    message: '<?php echo preg_replace('/[\r\n]+/', ' ', Session::get('alert-' . $msg)); ?>',
                    dismissible: true,
                });
            });

        <?php endif; ?>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

    <?php if(request()->session()->get('user-activated')): ?>
        $(document).ready(function() {
            notify({
                type: "success",
                message: `xxxx<?php echo request()->session()->get('user-activated'); ?>`,
                dismissible: true,
            });
        });
        <?php request()->session()->forget('user-activated'); ?>
    <?php endif; ?>
</script>
<?php /**PATH C:\xampp\htdocs\acellemail\resources\views/layouts/core/_flash.blade.php ENDPATH**/ ?>