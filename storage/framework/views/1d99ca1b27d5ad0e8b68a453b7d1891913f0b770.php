<input
    <?php echo e(isset($disabled) && $disabled == true ? ' disabled="disabled"' : "", false); ?>

    id="<?php echo e($name, false); ?>" placeholder="<?php echo e(isset($placeholder) ? $placeholder : "", false); ?>"
    value="<?php echo e(isset($value) ? $value : "", false); ?>"
    type="text"
    name="<?php echo e($name, false); ?>"
    class="form-control<?php echo e($classes, false); ?>  <?php echo e(isset($class) ? $class : "", false); ?>"
    <?php echo isset($default_value) ? 'default-value="'.$default_value.'"' : ''; ?>

    <?php echo e(isset($readonly) && $readonly ? "readonly=readonly" : "", false); ?>

>
<?php /**PATH C:\xampp\htdocs\acellemail\resources\views/helpers/_text.blade.php ENDPATH**/ ?>