<!DOCTYPE html>
<html lang="en">
    <head>
        <?php echo $__env->make('layouts.core._head', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

        <?php echo $__env->make('layouts.core._script_vars', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </head>
    <body class="bg-slate-800">
        <!-- Page container -->
        <div class="page-container login-container">
            <?php if(\Auth::check()): ?>
                <div class="text-end">
                    <a href="<?php echo e(url("/logout"), false); ?>"  class='text-white ml-20'><i class="icon-switch2"></i> <?php echo e(trans('messages.logout'), false); ?></a>
                </div>
            <?php endif; ?>

            <!-- Page content -->
            <div class="page-content">

                <!-- Main content -->
                <div class="content-wrapper">
                    <div class="row">
                        <div class="col-sm-2 col-md-4">

                        </div>
                        <div class="col-sm-8 col-md-4">

                            <div class="text-center login-header">
                                <a class="main-logo-big" href="<?php echo e(action('HomeController@index'), false); ?>">
                                    <?php if(\Acelle\Model\Setting::get('site_logo_big')): ?>
                                        <img src="<?php echo e(action('SettingController@file', \Acelle\Model\Setting::get('site_logo_big')), false); ?>" alt="">
                                    <?php else: ?>
                                        <img src="<?php echo e(URL::asset('images/logo_big.svg'), false); ?>" alt="">
                                    <?php endif; ?>
                                </a>
                            </div>

                            <?php echo $__env->yieldContent('content'); ?>

                        </div>
                    </div>
                </div>
                <!-- /main content -->

            </div>
            <!-- /page content -->


            <!-- Footer -->
            <div class="small">
                <div class="footer text-white text-center py-3" style="width: 100%">
                    <?php echo trans('messages.copy_right_light'); ?>

                </div>
            </div>
            <!-- /footer -->

        </div>
        <!-- /page container -->

        <?php echo \Acelle\Model\Setting::get('custom_script'); ?>


    </body>
</html><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/layouts/core/login.blade.php ENDPATH**/ ?>