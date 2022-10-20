    <?php $__currentLoopData = $options; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $option): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="radio custom-radio <?php echo e((isset($option['disabled']) && $option['disabled'] == true) ? "disabled" : '', false); ?>" data-popup='tooltip' title="<?php echo e(isset($popup) ? $popup : '', false); ?>">
            <label
				<?php echo isset($option['tooltip']) ? 'data-popup="tooltip" title="' . $option['tooltip'] . '"' : ''; ?>

			>
                <input<?php echo isset($radio_group)  ? " radio-group='" . $radio_group . "'" : ""; ?> <?php echo e((isset($option['disabled']) && $option['disabled'] == true) ? "disabled='disabled'" : '', false); ?> <?php echo e($option['value'] == $value ? " checked" : "", false); ?> type="radio" name="<?php echo e($name, false); ?>" value="<?php echo e($option['value'], false); ?>" class="  <?php echo e((isset($option['disabled']) && $option['disabled'] == true) ? "disabled" : '', false); ?>" />
				<div class="check"></div>
                <?php echo $option['text']; ?>

				<?php if(isset($option['description'])): ?>
					<div class="desc text-normal mb-10">
						<?php echo e($option['description'], false); ?>

					</div>
				<?php endif; ?>
            </label>
        </div>
	<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/helpers/_radio2.blade.php ENDPATH**/ ?>