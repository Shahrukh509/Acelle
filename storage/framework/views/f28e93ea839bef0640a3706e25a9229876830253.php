<script>
	var DATATABLE_TRANSLATE_URL = '<?php echo e(action('Controller@datatable_locale'), false); ?>';
	var JVALIDATE_TRANSLATE_URL = '<?php echo e(action('Controller@jquery_validate_locale'), false); ?>';
	var APP_URL = '<?php echo e(url('/'), false); ?>';
	var LANG_OK = '<?php echo e(trans('messages.ok'), false); ?>';
	var LANG_CONFIRM = '<?php echo e(trans('messages.confirm'), false); ?>';
	var LANG_YES = '<?php echo e(trans('messages.yes'), false); ?>';
	var LANG_NO = '<?php echo e(trans('messages.no'), false); ?>';
	var LANG_ARE_YOU_SURE = '<?php echo e(trans('messages.are_you_sure'), false); ?>';
	var LANG_CANCEL = '<?php echo e(trans('messages.cancel'), false); ?>';
	var LANG_DELETE_VALIDATE = '<?php echo e(trans('messages.delete_validate'), false); ?>';
	var LANG_DATE_FORMAT = '<?php echo e(trans('messages.j_date_format'), false); ?>';
	var LANG_ANY_DATETIME_FORMAT = '<?php echo e(trans('messages.any_datetime_format'), false); ?>';
	var LANG_J_DATE_FORMAT = '<?php echo e(trans('messages.j_date_format'), false); ?>';
	var CSRF_TOKEN = "<?php echo e(csrf_token(), false); ?>";
	var LANG_SUCCESS = '<?php echo e(trans('messages.notify.success'), false); ?>';
	var LANG_ALERT = '<?php echo e(trans('messages.notify.alert'), false); ?>';
	var LANG_ERROR = '<?php echo e(trans('messages.notify.error'), false); ?>';
	var LANG_CONFIRMATION = '<?php echo e(trans('messages.notify.confirmation'), false); ?>';
	var LANG_NOTIFY = {
		'success': '<?php echo e(trans('messages.notify.success'), false); ?>',
		'error': '<?php echo e(trans('messages.notify.error'), false); ?>',
		'notice': '<?php echo e(trans('messages.notify.notice'), false); ?>'
	};
	var LOADING_WAIT = '<?php echo e(trans('messages.loading_wait'), false); ?>';

	// current controller action
	var CONTROLLER = '<?php echo e($controller, false); ?>';
	var ACTION = '<?php echo e($action, false); ?>';
</script><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/layouts/core/_script_vars.blade.php ENDPATH**/ ?>