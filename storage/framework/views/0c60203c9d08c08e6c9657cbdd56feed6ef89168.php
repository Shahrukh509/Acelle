<?php $__env->startSection('title', trans('messages.contact_information')); ?>

<?php $__env->startSection('page_header'); ?>

    <div class="page-title">
        <ul class="breadcrumb breadcrumb-caret position-right">
            <li class="breadcrumb-item"><a href="<?php echo e(action("HomeController@index"), false); ?>"><?php echo e(trans('messages.home'), false); ?></a></li>
            <li class="breadcrumb-item active"><?php echo e(trans('messages.contact_information'), false); ?></li>
        </ul>
        <h1>
            <span class="text-semibold"><i class="icon-address-book3"></i> <?php echo e($customer->user->displayName(), false); ?></span>
        </h1>
    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <?php echo $__env->make("account._menu", \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <form enctype="multipart/form-data" action="<?php echo e(action('AccountController@contact'), false); ?>" method="POST" class="form-validate-jqueryz">
        <?php echo e(csrf_field(), false); ?>


        <h2 class="text-semibold text-primary mb-4"><?php echo e(trans('messages.primary_account_contact'), false); ?></h2>

        <div class="row">
            <div class="col-md-6">

                <div class="row">
                    <div class="col-md-6">
                        <?php echo $__env->make('helpers.form_control', ['type' => 'text', 'name' => 'first_name', 'value' => $contact->first_name, 'rules' => Acelle\Model\Contact::$rules], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                    <div class="col-md-6">
                        <?php echo $__env->make('helpers.form_control', ['type' => 'text', 'name' => 'last_name', 'value' => $contact->last_name, 'rules' => Acelle\Model\Contact::$rules], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                </div>

                <?php echo $__env->make('helpers.form_control', ['type' => 'text', 'label' => trans('messages.email_at_work'), 'name' => 'email', 'value' => $contact->email, 'help_class' => 'customer_contact', 'rules' => Acelle\Model\Contact::$rules], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                <?php echo $__env->make('helpers.form_control', ['type' => 'text', 'name' => 'address_1', 'value' => $contact->address_1, 'rules' => Acelle\Model\Contact::$rules], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                <div class="row">
                    <div class="col-md-6">
                        <?php echo $__env->make('helpers.form_control', ['type' => 'text', 'name' => 'city', 'value' => $contact->city, 'rules' => Acelle\Model\Contact::$rules], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                    <div class="col-md-6">
                        <?php echo $__env->make('helpers.form_control', ['type' => 'text', 'label' => trans('messages.zip_postal_code'), 'name' => 'zip', 'value' => $contact->zip, 'rules' => Acelle\Model\Contact::$rules], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                </div>

                <?php echo $__env->make('helpers.form_control', ['type' => 'text', 'label' => trans('messages.website_url'), 'name' => 'url', 'value' => $contact->url, 'rules' => Acelle\Model\Contact::$rules], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

            </div>
            <div class="col-md-6">

                <?php echo $__env->make('helpers.form_control', ['type' => 'select', 'name' => 'country_id', 'label' => trans('messages.country'), 'value' => $contact->country_id, 'options' => Acelle\Model\Country::getSelectOptions(), 'include_blank' => trans('messages.choose'), 'rules' => Acelle\Model\Contact::$rules], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                <?php echo $__env->make('helpers.form_control', ['type' => 'text', 'label' => trans('messages.company_organization'), 'name' => 'company', 'value' => $contact->company, 'rules' => Acelle\Model\Contact::$rules], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                <?php echo $__env->make('helpers.form_control', ['type' => 'text', 'label' => trans('messages.office_phone'), 'name' => 'phone', 'value' => $contact->phone, 'rules' => Acelle\Model\Contact::$rules], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                <?php echo $__env->make('helpers.form_control', ['type' => 'text', 'name' => 'address_2', 'value' => $contact->address_2, 'rules' => Acelle\Model\Contact::$rules], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                <?php echo $__env->make('helpers.form_control', ['type' => 'text', 'label' => trans('messages.state_province_region'), 'name' => 'state', 'value' => $contact->state, 'rules' => Acelle\Model\Contact::$rules], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

            </div>
        </div>

        <h2 class="text-semibold text-primary"><?php echo e(trans('messages.billing_information'), false); ?></h2>

        <div class="row">
            <div class="col-md-6">

                <?php echo $__env->make('helpers.form_control', [
                    'type' => 'text',
                    'name' => 'tax_number',
                    'value' => $contact->tax_number,
                    'help_class' => 'customer_contact',
                    'rules' => Acelle\Model\Contact::$rules]
                , \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

            </div>
            <div class="col-md-6">

                <?php echo $__env->make('helpers.form_control', [
                    'type' => 'text',
                    'name' => 'billing_address',
                    'value' => $contact->billing_address,
                    'help_class' => 'customer_contact',
                    'rules' => Acelle\Model\Contact::$rules]
                , \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

            </div>
        </div>

        <div class="text-end">
            <button class="btn btn-secondary"><i class="icon-check"></i> <?php echo e(trans('messages.save'), false); ?></button>
        </div>

    <form>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.core.frontend', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/account/contact.blade.php ENDPATH**/ ?>