<?php $__env->startSection('title', trans('messages.my_profile')); ?>

<?php $__env->startSection('page_script'); ?>
    <script type="text/javascript" src="<?php echo e(URL::asset('assets/js/plugins/forms/styling/uniform.min.js'), false); ?>"></script>
    <script type="text/javascript" src="<?php echo e(URL::asset('js/validate.js'), false); ?>"></script>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('page_header'); ?>

    <div class="page-title">
        <ul class="breadcrumb breadcrumb-caret position-right">
            <li class="breadcrumb-item"><a href="<?php echo e(action("HomeController@index"), false); ?>"><?php echo e(trans('messages.home'), false); ?></a></li>
            <li class="breadcrumb-item active"><?php echo e(trans('messages.profile'), false); ?></li>
        </ul>
        <h1>
            <span class="text-semibold"><span class="material-icons-round">
                            person_outline
                            </span> <?php echo e($user->displayName(), false); ?></span>
        </h1>
    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <?php echo $__env->make("account._menu", \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <form enctype="multipart/form-data" action="<?php echo e(action('AccountController@profile'), false); ?>" method="POST" class="form-validate-jqueryz">
        <?php echo e(csrf_field(), false); ?>


        <div class="row">
            <div class="col-md-3">
                <div class="sub_section">
                    <h3 class="text-semibold text-primary mb-4"><?php echo e(trans('messages.profile_photo'), false); ?></h3>
                    <div class="media profile-image">
                        <div class="media-left">
                            <a href="#" class="upload-media-container">
                                <img preview-for="image" empty-src="<?php echo e(URL::asset('images/placeholder.jpg'), false); ?>" src="<?php echo e($user->getProfileImageUrl(), false); ?>" class="img-circle" alt="">
                            </a>
                            <input type="file" name="image" class="file-styled previewable hide">
                            <input type="hidden" name="_remove_image" value='' />
                        </div>
                        <div class="media-body text-center">
                            <h5 class="media-heading text-semibold"><?php echo e(trans('messages.upload_your_photo'), false); ?></h5>
                            <?php echo e(trans('messages.photo_at_least', ["size" => "300px x 300px"]), false); ?>

                            <br /><br />
                            <a href="#upload" onclick="$('input[name=image]').trigger('click')" class="btn btn-primary me-1"><span class="material-icons-outlined">
file_download
</span> <?php echo e(trans('messages.upload'), false); ?></a>
                            <a href="#remove" class="btn btn-secondary remove-profile-image"><span class="material-icons-outlined">
delete_outline
</span> <?php echo e(trans('messages.remove'), false); ?></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-5">
                <div class="sub_section">
                    <h3 class="text-semibold text-primary mb-4"><?php echo e(trans('messages.basic_information'), false); ?></h3>

                    <div class="row">
                        <div class="col-md-6">
                            <?php echo $__env->make('helpers.form_control', ['type' => 'text', 'name' => 'first_name', 'value' => $user->first_name, 'rules' => $user->rules()], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        </div>
                        <div class="col-md-6">
                            <?php echo $__env->make('helpers.form_control', ['type' => 'text', 'name' => 'last_name', 'value' => $user->last_name, 'rules' => $user->rules()], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        </div>
                    </div>

                    <?php echo $__env->make('helpers.form_control', ['type' => 'select', 'name' => 'timezone', 'value' => $customer->timezone, 'options' => Tool::getTimezoneSelectOptions(), 'include_blank' => trans('messages.choose'), 'rules' => $user->rules()], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                    <?php echo $__env->make('helpers.form_control', ['type' => 'select', 'name' => 'language_id', 'label' => trans('messages.language'), 'value' => $customer->language_id, 'options' => Acelle\Model\Language::getSelectOptions(), 'include_blank' => trans('messages.choose'), 'rules' => $user->rules()], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                    <h3 class="text-semibold text-primary mb-4 mt-5"><?php echo e(trans('messages.account.personality'), false); ?></h3>

                    <div class="row mb-4">
                        <div class="col-md-12">
                            <label class="mb-2"><?php echo e(trans('messages.account.menu_layout'), false); ?></label>
                            <?php echo $__env->make('layouts.core._menu_layout_switch', [
                                'menu_layout' => $customer->menu_layout,
                            ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-12">
                            <label class="mb-3"><?php echo e(trans('messages.theme_mode'), false); ?></label>
                            <?php echo $__env->make('layouts.core._theme_mode_control', [
                                'theme_mode' => $customer->theme_mode,
                            ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 color-box">
                            <label class="mb-3"><?php echo e(trans('messages.color_scheme'), false); ?></label>
                            <div class="text-left mb-4 profile-scheme-select mt-2">
                                <?php echo $__env->make('layouts.core._theme_color_control', [
                                    'theme_color' => $customer->getColorScheme(),
                                ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>  
                                
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-10 color-box">
                            <?php echo $__env->make('helpers.form_control', [
                                'type' => 'select',
                                'class' => '',
                                'name' => 'text_direction',
                                'value' => $customer->text_direction,
                                'help_class' => 'customer',
                                'options' => [
                                    ['text' => trans('messages.text_direction.ltr'), 'value' => 'ltr'],
                                    ['text' => trans('messages.text_direction.rtl'), 'value' => 'rtl']
                                ],
                                'rules' => '',
                            ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-md-4">
                <div class="sub_section">
                    <h3 class="text-semibold text-primary mb-4"><?php echo e(trans('messages.account'), false); ?></h3>

                    <?php echo $__env->make('helpers.form_control', ['type' => 'text', 'name' => 'email', 'value' => $customer->user->email, 'help_class' => 'profile', 'rules' => $user->rules()], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                    <?php echo $__env->make('helpers.form_control', ['type' => 'password', 'label'=> trans('messages.new_password'), 'name' => 'password', 'rules' => $user->rules()], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                    <?php echo $__env->make('helpers.form_control', ['type' => 'password', 'name' => 'password_confirmation', 'rules' => $user->rules()], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                </div>
            </div>
        </div>
<hr>
        <div class="text-start">
            <button class="btn btn-secondary"><i class="icon-check"></i> <?php echo e(trans('messages.save'), false); ?></button>
        </div>

    <form>

<script>
    function changeSelectColor() {
        $('.select2 .select2-selection__rendered, .select2-results__option').each(function() {
            var text = $(this).html();
            if (text == '<?php echo e(trans('messages.default'), false); ?>') {
                if($(this).find("i").length == 0) {
                    $(this).prepend("<i class='material-icons-round text-default theme-option me-2'>padding</i>");
                }
            }
            if (text == '<?php echo e(trans('messages.blue'), false); ?>') {
                if($(this).find("i").length == 0) {
                    $(this).prepend("<i class='material-icons-round text-blue theme-option me-2'>padding</i>");
                }
            }
            if (text == '<?php echo e(trans('messages.green'), false); ?>') {
                if($(this).find("i").length == 0) {
                    $(this).prepend("<i class='material-icons-round text-green theme-option me-2'>padding</i>");
                }
            }
            if (text == '<?php echo e(trans('messages.brown'), false); ?>') {
                if($(this).find("i").length == 0) {
                    $(this).prepend("<i class='material-icons-round text-brown theme-option me-2'>padding</i>");
                }
            }
            if (text == '<?php echo e(trans('messages.pink'), false); ?>') {
                if($(this).find("i").length == 0) {
                    $(this).prepend("<i class='material-icons-round text-pink theme-option me-2'>padding</i>");
                }
            }
            if (text == '<?php echo e(trans('messages.grey'), false); ?>') {
                if($(this).find("i").length == 0) {
                    $(this).prepend("<i class='material-icons-round text-grey theme-option me-2'>padding</i>");
                }
            }
            if (text == '<?php echo e(trans('messages.white'), false); ?>') {
                if($(this).find("i").length == 0) {
                    $(this).prepend("<i class='material-icons-round text-white theme-option me-2'>padding</i>");
                }
            }
        });
    }

    $(document).ready(function() {
        setInterval("changeSelectColor()", 100);

        // Preview upload image
        $("input.previewable").on('change', function() {
            var img = $("img[preview-for='" + $(this).attr("name") + "']");
            previewImageBrowse(this, img);
        });
        $(".remove-profile-image").click(function() {
            var img = $(this).parents(".profile-image").find("img");
            var imput = $(this).parents(".profile-image").find("input[name='_remove_image']");
            img.attr("src", img.attr("empty-src"));
            imput.val("true");
        });

        // change color effects
        $('.color-scheme-select').on('click', function(e) {
            var value = $(this).val();
            $("body").removeClass (function (index, className) {
                return (className.match (/(^|\s)theme-\S+/g) || []).join(' ');
            });
            $('body').addClass('theme-' + value);
        });
    });
</script>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.core.frontend', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/account/profile.blade.php ENDPATH**/ ?>