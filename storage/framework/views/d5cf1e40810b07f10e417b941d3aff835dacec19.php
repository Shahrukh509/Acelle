<!DOCTYPE html>
<html lang="en">
<head>
	<title><?php echo $__env->yieldContent('title'); ?> - <?php echo e(\Acelle\Model\Setting::get("site_name"), false); ?></title>

	<?php echo $__env->make('layouts.core._head', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</head>

<body>

	<!-- Page header -->
	<div class="page-header">
		<div class="page-header-content">

			<?php echo $__env->yieldContent('page_header'); ?>

		</div>
	</div>
	<!-- /page header -->

	<!-- Page container -->
	<div class="page-container" style="min-height: 100vh">

		<!-- Page content -->
		<div class="page-content">

			<!-- Main content -->
			<div class="content-wrapper">

				<!-- main inner content -->
				<?php echo $__env->yieldContent('content'); ?>

			</div>
			<!-- /main content -->

		</div>
		<!-- /page content -->


		<!-- Footer -->
		<div class="footer text-muted">
			<?php echo trans('messages.copy_right'); ?>

		</div>
		<!-- /footer -->

	</div>
	<!-- /page container -->

    <?php echo \Acelle\Model\Setting::get('custom_script'); ?>


</body>
</html>
<?php /**PATH C:\xampp\htdocs\acellemail\resources\views/layouts/core/register.blade.php ENDPATH**/ ?>