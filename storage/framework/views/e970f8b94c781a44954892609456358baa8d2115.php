<!DOCTYPE html>
<html lang="en">
<head>
	<?php echo $__env->make('layouts.core._head', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

	<?php echo $__env->make('layouts.core._script_vars', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

	<?php echo $__env->yieldContent('head'); ?>
</head>
<body class="layout-dark topbar">
	<?php echo $__env->make('layouts.core._menu_dark_frontend', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
	<?php echo $__env->make('layouts.core._middle_bar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <?php echo $__env->yieldContent('page_header'); ?>

    <!-- main inner content -->
    <?php echo $__env->yieldContent('content'); ?>

	<!-- Notification -->
	<?php echo $__env->make('layouts.core._notify', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
	<?php echo $__env->make('layouts.core._notify_frontend', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

	<!-- display flash message -->
	<?php echo $__env->make('layouts.core._flash', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

	<!-- Admin area -->
	<?php echo $__env->make('layouts.core._admin_area', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

	<?php echo \Acelle\Model\Setting::get('custom_script'); ?>

</body>
</html><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/layouts/core/frontend_dark.blade.php ENDPATH**/ ?>