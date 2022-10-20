<?php $__env->startSection('title'); ?>
    <?php echo e(trans('messages.billing_information'), false); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <form class="billing-address-form" action="<?php echo e(action('AccountController@editBillingAddress'), false); ?>"
        method="POST">
        <?php echo e(csrf_field(), false); ?>

        <?php if(request()->user()->customer->contact): ?>
            <?php echo $__env->make('helpers.form_control', [
                'type' => 'checkbox2',
                'name' => 'same_as_contact',
                'value' => (request()->same_as_contact == 'true' ? 'true' : 'false'),
                'label' => trans('messages.same_as_contact'),
                'options' => ['false', 'true'],
                'help_class' => 'billing_address',
                'rules' => ['first_name' => 'required'],
            ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <?php endif; ?>

        <div class="row">
            <div class="col-md-6">
                <?php echo $__env->make('helpers.form_control', [
                    'type' => 'text',
                    'name' => 'first_name',
                    'value' => $billingAddress->first_name,
                    'label' => trans('messages.first_name'),
                    'help_class' => 'billing_address',
                    'rules' => ['first_name' => 'required'],
                    // 'readonly' => request()->same_as_contact == 'true',
                ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
            <div class="col-md-6">
                <?php echo $__env->make('helpers.form_control', [
                    'type' => 'text',
                    'name' => 'last_name',
                    'value' => $billingAddress->last_name,
                    'label' => trans('messages.last_name'),
                    'help_class' => 'billing_address',
                    'rules' => ['last_name' => 'required'],
                    // 'readonly' => request()->same_as_contact == 'true',
                ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <?php echo $__env->make('helpers.form_control', [
                    'type' => 'text',
                    'name' => 'email',
                    'value' => $billingAddress->email,
                    'label' => trans('messages.email_address'),
                    'help_class' => 'billing_address',
                    'rules' => ['email' => 'required'],
                    // 'readonly' => request()->same_as_contact == 'true',
                ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
            <div class="col-md-6">
                <?php echo $__env->make('helpers.form_control', [
                    'type' => 'text',
                    'name' => 'phone',
                    'value' => $billingAddress->phone,
                    'label' => trans('messages.phone'),
                    'help_class' => 'billing_address',
                    // 'readonly' => request()->same_as_contact == 'true',
                ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <?php echo $__env->make('helpers.form_control', [
                    'type' => 'text',
                    'name' => 'address',
                    'value' => $billingAddress->address,
                    'label' => trans('messages.address'),
                    'help_class' => 'billing_address',
                    'rules' => ['address' => 'required'],
                    // 'readonly' => request()->same_as_contact == 'true',
                ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
            <div class="col-md-6">
                <?php echo $__env->make('helpers.form_control', [
                    'type' => 'select',
                    'name' => 'country_id',
                    'value' => $billingAddress->country_id,
                    'label' => trans('messages.country'),
                    'options' => Acelle\Model\Country::getSelectOptions(),
                    'include_blank' => trans('messages.select_country'),
                    'help_class' => 'billing_address',
                    'rules' => ['country_id' => 'required'],
                    // 'readonly' => request()->same_as_contact == 'true',
                ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
        </div>

        <div class="mt-4">
            <button type="submit" class="btn btn-secondary"><?php echo e(trans('messages.save'), false); ?></button>
        </div>
    </form>

    <script>
        $('[name=same_as_contact]').change(function() {
            var checked = $(this).is(':checked');
            
            $.ajax({
                url: '<?php echo e(action('AccountController@editBillingAddress'), false); ?>',
                method: 'GET',
                data: {
                    same_as_contact: checked
                },
                success: function (response) {
                    billingPopup.loadHtml(response);
                }
            });
        });
        $('.billing-address-form').on('submit', function(e) {
            e.preventDefault();
            var url = $(this).attr('action');
            var data = $(this).serialize();

            addMaskLoading();

            // 
            $.ajax({
                url: url,
                method: 'POST',
                data: data,
                globalError: false,
                statusCode: {
                    // validate error
                    400: function (res) {
                        billingPopup.loadHtml(res.responseText);

                        // remove masking
                        removeMaskLoading();
                    }
                },
                success: function (response) {
                    removeMaskLoading();

                    // notify
                    notify(response.status, '<?php echo e(trans('messages.notify.success'), false); ?>', response.message); 

                    billingPopup.hide();

                    window.location.reload();
                }
            });
        })
            
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.popup.small', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/account/editBillingAddress.blade.php ENDPATH**/ ?>