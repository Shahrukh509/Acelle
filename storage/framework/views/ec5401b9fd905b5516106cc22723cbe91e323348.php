<?php $__env->startSection('title', trans('messages.login')); ?>

<?php $__env->startSection('content'); ?>
<style>
    .small {
        font-size: 0.86rem;
    }
</style>
<!-- Advanced login -->
<form class="" role="form" method="POST" action="<?php echo e(url('/login'), false); ?>">
    <?php echo e(csrf_field(), false); ?>


    <div class="panel panel-body p-4 rounded-3 bg-white shadow">

        <h4 class="text-semibold mt-0 mb-4 fw-600 fs-5"><?php echo e(trans('messages.login'), false); ?></h4>

        <div class="form-group login-email-input has-feedback has-feedback-left<?php echo e($errors->has('email') ? ' has-error' : '', false); ?>">
            <input id="email" type="email" class="form-control" name="email" placeholder="<?php echo e(trans("messages.email"), false); ?>"
	 value="<?php echo e(old('email') ? old('email') : (isset(\Acelle\Model\User::getAuthenticateFromFile()['email']) ? \Acelle\Model\User::getAuthenticateFromFile()['email'] : ""), false); ?>"
            >
            <div class="form-control-feedback">
	<i class="icon-envelop5 text-muted"></i>
            </div>
            <?php if($errors->has('email')): ?>
	<span class="help-block">
	    <strong><?php echo e($errors->first('email'), false); ?></strong>
	</span>
            <?php endif; ?>
        </div>

        <div class="form-group login-password-input has-feedback has-feedback-left<?php echo e($errors->has('password') ? ' has-error' : '', false); ?>">
            <input id="password" type="password" class="form-control" name="password" placeholder="<?php echo e(trans("messages.password"), false); ?>"
	value="<?php echo e(isset(\Acelle\Model\User::getAuthenticateFromFile()['password']) ? \Acelle\Model\User::getAuthenticateFromFile()['password'] : "", false); ?>"
            >
            <div class="form-control-feedback">
	<i class="icon-lock2 text-muted"></i>
            </div>
            <?php if($errors->has('password')): ?>
	<span class="help-block">
	    <strong><?php echo e($errors->first('password'), false); ?></strong>
	</span>
            <?php endif; ?>
        </div>

        <div class="form-group login-options mt-4">
            <div class="row align-items-center small">
                <div class="col-sm-6">
                    <label class="checkbox-inline d-flex align-items-center m-0">
                        <input type="checkbox" class="styled me-2" checked="checked" name="remember">
                        <span class="ms-2"><?php echo e(trans("messages.stay_logged_in"), false); ?></span>
                    </label>
                </div>

                <div class="col-sm-6 text-end text-semibold fw-600">
                    <a href="<?php echo e(url('/password/reset'), false); ?>"><?php echo e(trans("messages.forgot_password"), false); ?></a>
                </div>
            </div>
        </div>

        <?php if(\Acelle\Model\Setting::get('login_recaptcha') == 'yes'): ?>
            <?php echo \Acelle\Library\Tool::showReCaptcha($errors); ?>

        <?php endif; ?>

        <button type="submit" class="btn rounded-2 btn-primary d-block login-button py-2 fw-600"
            style="width:100%;text-transform:uppercase"
        ><span class="me-2"><?php echo e(trans("messages.login"), false); ?></span> <span class="material-icons-round">
            login
            </span></button>
    </div>

    <?php if(\Acelle\Model\Setting::get('enable_user_registration') == 'yes'): ?>
        <div class="text-center mt-4 text-white small">
            <?php echo trans('messages.need_a_account_create_an_one', [
	'link' => action('UserController@register')
            ]); ?>

        </div>
    <?php endif; ?>
</form>
<!-- /advanced login -->

<script>
    function addButtonLoadingEffect(button) {
        button.addClass('button-loading');
        button.append('<div class="loader"></div>');
    }

    function removeButtonLoadingEffect(button) {
        button.removeClass('button-loading');
        button.find('.loader').remove();
    }
    $('.login-button').on('click', function(e) {
        e.preventDefault();

        $(this).html('<?php echo e(trans('messages.login.please_wait'), false); ?>');

        $(this).closest('form').addClass('loading');

        addButtonLoadingEffect($(this));

        $(this).closest('form').submit();
    });
</script>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.core.login', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/auth/b_login.blade.php ENDPATH**/ ?>