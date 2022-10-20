<?php if(count($errors) > 0): ?>
    <!-- Form Error List -->
    <div class="alert alert-danger alert-noborder alert-dismissible">
        <strong><?php echo e(trans('messages.check_entry_try_again'), false); ?></strong>

        <br><br>

        <ul>
            <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <li><?php echo e($error, false); ?></li>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </ul>

        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
<?php endif; ?>

<?php $__currentLoopData = ['danger', 'warning', 'info', 'error']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $msg): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <?php
        $class = $msg;
        if ($msg == 'error') {
            $class = 'danger';
        }
    ?>
    <?php if(Session::has('alert-' . $msg)): ?>
        <!-- Form Error List -->
        <div class="alert alert-<?php echo e($class, false); ?> alert-noborder alert-dismissible">
            <strong><?php echo e(trans('messages.' . $msg), false); ?></strong>

            <br>

            <p><?php echo preg_replace('/[\r\n]+/', ' ', Session::get('alert-' . $msg)); ?></p>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    <?php endif; ?>    
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php /**PATH C:\xampp\htdocs\acellemail\resources\views/layouts/core/_errors.blade.php ENDPATH**/ ?>