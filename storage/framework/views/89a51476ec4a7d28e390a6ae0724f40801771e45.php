<?php
    $label = isset($label) ? $label : (Lang::has('messages.'.$name) ? trans('messages.'.$name) : '');
    $var_name = str_replace('[]', '', $name);
    $var_name = str_replace('][', '.', $var_name);
    $var_name = str_replace('[', '.', $var_name);
    $var_name = str_replace(']', '', $var_name);
    $classes = (isset($rules) && isset($rules[$var_name])) ? ' '.str_replace('|', ' ', $rules[$var_name]) : '';
    $required = (isset($rules) && isset($rules[$var_name]) && in_array('required', explode('|', $rules[$var_name]))) ? true : '';
?>

<?php if($type == 'checkbox' || $type == 'checkbox3'): ?>
    <?php echo $__env->make('helpers._' . $type, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php elseif(!empty($errors)): ?>
    <div class="form-group<?php echo e($errors->has($var_name) ? ' has-error' : '', false); ?> control-<?php echo e($type, false); ?>">
        <?php if(!empty($label) && $type != 'checkbox2' && $type != 'mc_checkbox'): ?>
            <label>
                <?php echo $label; ?>

                <?php if($required): ?>
                    <span class="text-danger">*</span>
                <?php endif; ?>
                <?php if(isset($check_all_none)): ?>
                    &nbsp;&nbsp;&nbsp;
                    <a href="#all" class="checkboxes_check_all"><?php echo e(trans('messages.all'), false); ?></a>
                    | <a href="#none" class="checkboxes_check_none"><?php echo e(trans('messages.none'), false); ?></a>
                <?php endif; ?>
            </label>
        <?php endif; ?>

        <?php if(!empty($prefix)): ?>
            <span class="prefix">
                <?php echo $prefix; ?>

            </span>
        <?php endif; ?>

        <?php echo $__env->make('helpers._' . $type, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

        <?php if(!empty($quick_note)): ?>
            <span class="quick_note small">
                <?php echo $quick_note; ?>

            </span>
        <?php endif; ?>

        <?php if(!empty($subfix)): ?>
            <span class="subfix">
                <?php echo $subfix; ?>

            </span>
        <?php endif; ?>

        <?php if(isset($help_class) && Lang::has('messages.' . $help_class . '.' . $name . '.help')): ?>
            <div class="help alert alert-info">
                <?php echo trans('messages.' . $help_class . '.' . $name . '.help'); ?>

            </div>
        <?php endif; ?>
        
        <?php if(isset($help)): ?>
            <div class="help alert alert-info">
                <?php echo $help; ?>

            </div>
        <?php endif; ?>

        <?php if($errors->has($var_name)): ?>
            <span class="help-block">
                <?php echo e($errors->first($var_name), false); ?>

            </span>
        <?php endif; ?>
    </div>
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\acellemail\resources\views/helpers/form_control.blade.php ENDPATH**/ ?>