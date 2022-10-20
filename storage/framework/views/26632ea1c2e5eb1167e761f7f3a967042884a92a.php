<div>
    <input
        type="password"
        id="<?php echo e($name, false); ?>"
        value="<?php echo e(isset($value) ? $value : "", false); ?>"
        autocomplete="new-password"
        type="text"
        name="<?php echo e($name, false); ?>"
        class="form-control<?php echo e($classes, false); ?> <?php echo e(isset($eye) && $eye == true ? "has-eye" : "", false); ?>"
        <?php echo e(isset($disabled) && $disabled == true ? ' disabled="disabled"' : "", false); ?>

    >
    <?php if(isset($eye) && $eye == true): ?>
        <span class="material-icons-outlined btn-view-password">visibility</span>
    <?php endif; ?>
</div>
<?php /**PATH C:\xampp\htdocs\acellemail\resources\views/helpers/_password.blade.php ENDPATH**/ ?>