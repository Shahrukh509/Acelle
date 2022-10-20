<?php if(\Acelle\Model\Setting::isYes('theme.beta')): ?>
    <?php echo $__env->make('auth/t_login', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php else: ?>
    <?php echo $__env->make('auth/b_login', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\acellemail\resources\views/auth/login.blade.php ENDPATH**/ ?>