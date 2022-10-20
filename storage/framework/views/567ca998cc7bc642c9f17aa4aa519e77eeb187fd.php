<div class="modal-dialog shadow modal-default">
    <div class="modal-content">
        <div class="modal-header">
            <a href="javascript:;" class="material-icons-round back">keyboard_backspace</a>
            <h5 class="modal-title text-center" style="width:100%">
                <?php echo $__env->yieldContent('bar-title'); ?>
            </h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body <?php echo $__env->yieldContent('class'); ?>">
            <h4 class="fw-600 mb-3 pb-1"><?php echo $__env->yieldContent('title'); ?></h4>

            <!-- display flash message -->
            <?php echo $__env->make('common.errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

            <!-- main inner content -->
            <?php echo $__env->yieldContent('content'); ?>
        </div>
    </div>
</div><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/layouts/popup/small.blade.php ENDPATH**/ ?>