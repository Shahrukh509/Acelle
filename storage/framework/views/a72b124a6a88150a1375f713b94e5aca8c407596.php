<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="<?php echo e(\Acelle\Model\Setting::get("site_description"), false); ?>">
<meta name="keywords" content="<?php echo e(\Acelle\Model\Setting::get("site_keyword"), false); ?>" />
<meta name="php-version" content="<?php echo e(phpversion(), false); ?>" />

<title><?php echo $__env->yieldContent('title'); ?> - <?php echo e(\Acelle\Model\Setting::get("site_name"), false); ?></title>

<?php if(\Acelle\Model\Setting::get('site_favicon')): ?>
    <link rel="shortcut icon" type="image/png" href="<?php echo e(action('SettingController@file', \Acelle\Model\Setting::get('site_favicon')), false); ?>"/>
<?php else: ?>
    <?php echo $__env->make('layouts.core._favicon', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php endif; ?>    

<?php echo $__env->make('layouts.core._includes', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/layouts/core/_head.blade.php ENDPATH**/ ?>