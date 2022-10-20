<select name="<?php echo e($name, false); ?>"
	<?php echo e(isset($disabled) && $disabled == true ? ' disabled="disabled"' : "", false); ?>

	<?php if(isset($placeholder)): ?>
		data-placeholder="<?php echo e($placeholder, false); ?>"
	<?php endif; ?>
		class="select select-search<?php echo e($classes, false); ?> <?php echo e(isset($class) ? $class : "", false); ?>

			<?php echo e(isset($required) && !empty($required) ? 'required' : '', false); ?>"
			<?php echo e(isset($multiple) && $multiple == true ? "multiple='multiple'" : "", false); ?>

			<?php echo e(isset($readonly) && $readonly == true ? "readonly='readonly'" : "", false); ?>

		>
	<?php if(isset($include_blank)): ?>
		<option value=""><?php echo e($include_blank, false); ?></option>
	<?php endif; ?>
	<?php $__currentLoopData = $options; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $option): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
		<option
			<?php if(is_array($value)): ?>
				<?php echo e(in_array($option['value'], $value) ? " selected" : "", false); ?>

			<?php else: ?>
				<?php echo e(in_array($option['value'], explode(",", $value)) ? " selected" : "", false); ?>

			<?php endif; ?>
			value="<?php echo e($option['value'], false); ?>"
		><?php echo e(htmlspecialchars($option['text']), false); ?></option>
	<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</select>
<?php /**PATH C:\xampp\htdocs\acellemail\resources\views/helpers/_select.blade.php ENDPATH**/ ?>