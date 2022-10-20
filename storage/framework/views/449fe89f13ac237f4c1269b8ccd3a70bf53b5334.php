<!DOCTYPE html>
<html lang="en">
<head>
	<?php echo $__env->make('layouts.core._head', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

	<?php echo $__env->make('layouts.core._script_vars', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

	<?php echo $__env->yieldContent('head'); ?>

	<?php if(getThemeMode(Auth::user()->customer->theme_mode, request()->session()->get('customer-auto-theme-mode')) == 'dark'): ?>
		<meta name="theme-color" content="<?php echo e(getThemeColor(
			Auth::user()->customer->getColorScheme()), false); ?>">
	<?php elseif(Auth::user()->customer->getMenuLayout() == 'left'): ?>
		<meta name="theme-color" content="#eff3f5">
	<?php endif; ?>

	<script>
		<?php if(Auth::user()->customer->theme_mode == 'auto'): ?>
			var ECHARTS_THEME = isDarkMode() ? 'dark' : null

			// auto detect dark-mode
			$(function() {
				autoDetechDarkMode('<?php echo e(action('AccountController@saveAutoThemeMode'), false); ?>');
			});
		<?php else: ?>
			var ECHARTS_THEME = '<?php echo e(Auth::user()->customer->theme_mode == 'dark' ? 'dark' : null, false); ?>';
		<?php endif; ?>
	</script>
</head>
<body class="theme-<?php echo e(Auth::user()->customer->getColorScheme(), false); ?> <?php echo e(Auth::user()->customer->getMenuLayout(), false); ?>bar
	<?php echo e(Auth::user()->customer->getMenuLayout(), false); ?>bar-<?php echo e(request()->session()->get('customer-leftbar-state'), false); ?>

	fullscreen-search-box
	mode-<?php echo e(getThemeMode(Auth::user()->customer->theme_mode, request()->session()->get('customer-auto-theme-mode')), false); ?>

">
	<?php echo $__env->make('layouts.core._menu_frontend', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

	<?php echo $__env->make('layouts.core._middle_bar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

	<main class="container page-container px-3">
		<?php echo $__env->make('layouts.core._headbar_frontend', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
		
		<?php echo $__env->yieldContent('page_header'); ?>

		<!-- display flash message -->
		<?php echo $__env->make('layouts.core._errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

		<!-- main inner content -->
		<?php echo $__env->yieldContent('content'); ?>

		<!-- Footer -->
		<?php echo $__env->make('layouts.core._footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
	</main>

	<!-- Admin area -->
	<?php echo $__env->make('layouts.core._admin_area', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

	<!-- Notification -->
	<?php echo $__env->make('layouts.core._notify', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
	<?php echo $__env->make('layouts.core._notify_frontend', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

	<!-- display flash message -->
	<?php echo $__env->make('layouts.core._flash', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

	<script>
		var wizardUserPopup;

		$(function() {
			// auto detect dark mode


			// Customer color scheme | menu layout wizard
			<?php if(false): ?>
				$(function() {
					wizardUserPopup = new Popup({
						url: '<?php echo e(action('AccountController@wizardColorScheme'), false); ?>',
					});
					wizardUserPopup.load();
				});
			<?php endif; ?>
			
			<?php if(null !== Session::get('orig_admin_id') && Auth::user()->admin): ?>
				notify({
					type: 'warning',
					message: `<?php echo trans('messages.current_login_as', ["name" => Auth::user()->displayName()]); ?><br><?php echo trans('messages.click_to_return_to_origin_user', ["link" => action("Admin\AdminController@loginBack")]); ?>`,
					timeout: false,
				});
			<?php endif; ?>
		
			<?php if(null !== Session::get('orig_admin_id') && Auth::user()->admin): ?>
				notify({
					type: 'warning',
					message: `<?php echo trans('messages.site_is_offline'); ?>`,
					timeout: false,
				});
			<?php endif; ?>
		})
			
	</script>

	<?php echo \Acelle\Model\Setting::get('custom_script'); ?>

</body>
</html><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/layouts/core/frontend.blade.php ENDPATH**/ ?>