<?php $__env->startSection('title', trans('messages.create_your_account')); ?>

<?php $__env->startSection('content'); ?>
    
    <form enctype="multipart/form-data" action="<?php echo e(action('UserController@register'), false); ?>" method="POST" class="form-validate-jqueryz subscription-form">
        <?php echo e(csrf_field(), false); ?>

        <div class="row mt-5 mc-form">
            <div class="col-md-2"></div>
            <div class="col-md-2 text-end mt-60">
                <a class="main-logo-big" href="<?php echo e(action('HomeController@index'), false); ?>">
                    <?php if(\Acelle\Model\Setting::get('site_logo_big')): ?>
                        <img width="150px" src="<?php echo e(action('SettingController@file', \Acelle\Model\Setting::get('site_logo_big')), false); ?>" alt="">
                    <?php else: ?>
                        <img width="150px" src="<?php echo e(URL::asset('images/logo_square.png'), false); ?>" alt="">
                    <?php endif; ?>
                </a>
            </div>
            <div class="col-md-5">
                
                <h1 class="mb-20"><?php echo e(trans('messages.create_your_account'), false); ?></h1>
                <p><?php echo trans('messages.register.intro', [
                    'login' => url("/login"),
                ]); ?></p>
                    
                <?php echo $__env->make('helpers.form_control', [
                    'type' => 'text',
                    'name' => 'email',
                    'value' => $user->email,
                    'help_class' => 'profile',
                    'rules' => $user->registerRules()
                ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                
                <?php echo $__env->make('helpers.form_control', [
                    'type' => 'text',
                    'name' => 'first_name',
                    'value' => $user->first_name,
                    'rules' => $user->registerRules()
                ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                
                <?php echo $__env->make('helpers.form_control', [
                    'type' => 'text',
                    'name' => 'last_name',
                    'value' => $user->last_name,
                    'rules' => $user->registerRules()
                ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                
                <?php echo $__env->make('helpers.form_control', [
                    'type' => 'password',
                    'label'=> trans('messages.new_password'),
                    'name' => 'password',
                    'rules' => $user->registerRules(),
                    'eye' => true,
                ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                
                <?php echo $__env->make('helpers.form_control', [
                    'type' => 'select',
                    'name' => 'timezone',
                    'value' => $customer->timezone,
                    'options' => Tool::getTimezoneSelectOptions(),
                    'include_blank' => trans('messages.choose'),
                    'rules' => $user->registerRules()
                ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>								
                
                <?php echo $__env->make('helpers.form_control', [
                    'type' => 'select',
                    'name' => 'language_id',
                    'label' => trans('messages.language'),
                    'value' => $customer->language_id,
                    'options' => Acelle\Model\Language::getSelectOptions(),
                    'include_blank' => trans('messages.choose'),
                    'rules' => $user->registerRules()
                ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                
                <?php if(Acelle\Model\Setting::get('registration_recaptcha') == 'yes'): ?>
                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <?php if($errors->has('recaptcha_invalid')): ?>
                                <div class="text-danger text-center"><?php echo e($errors->first('recaptcha_invalid'), false); ?></div>
                            <?php endif; ?>
                            <?php echo Acelle\Library\Tool::showReCaptcha(); ?>

                        </div>
                    </div>
                <?php endif; ?>
                <hr>
                <div class="row flex align-items">
                    <div class="col-md-4">
                        <button type='submit' class="btn btn-secondary res-button"><i class="icon-check"></i> <?php echo e(trans('messages.get_started'), false); ?></button>
                    </div>
                    <div class="col-md-8">
                        <?php echo trans('messages.register.agreement_intro'); ?>

                    </div>
                        
                </div>
            </div>
            <div class="col-md-1"></div>
        </div>
    </form>

    <script>
        <?php if(isSiteDemo()): ?>
            $('.res-button').click(function(e) {
                e.preventDefault();

                notify('notice', '<?php echo e(trans('messages.notify.notice'), false); ?>', '<?php echo e(trans('messages.operation_not_allowed_in_demo'), false); ?>');
            });
        <?php endif; ?>
    </script>
    
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.core.register', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/users/register.blade.php ENDPATH**/ ?>