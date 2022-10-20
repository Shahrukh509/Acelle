<?php $__env->startSection('title', trans('messages.logs')); ?>
    
<?php $__env->startSection('page_header'); ?>
    
    <div class="page-title">
        <ul class="breadcrumb breadcrumb-caret position-right">
            <li class="breadcrumb-item"><a href="<?php echo e(action("HomeController@index"), false); ?>"><?php echo e(trans('messages.home'), false); ?></a></li>
            <li class="breadcrumb-item active"><?php echo e(trans('messages.activities'), false); ?></li>
        </ul>
        <h1>
            <span class="text-semibold"><span class="material-icons-round">
                            person_outline
                            </span> <?php echo e(Auth::user()->displayName(), false); ?></span>
        </h1>
    </div>
                
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    
                <?php echo $__env->make("account._menu", \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>    
    
                <div class="listing-form"
                    data-url="<?php echo e(action('AccountController@logsListing'), false); ?>"
                    per-page="<?php echo e(Acelle\Model\Log::$itemsPerPage, false); ?>"                
                >                
                    <div class="d-flex top-list-controls top-sticky-content">
                        <div class="me-auto">
                            <?php if($logs->count() >= 0): ?>                    
                                <div class="filter-box">
                                    <span class="filter-group">
                                        <span class="title text-semibold text-muted"><?php echo e(trans('messages.sort_by'), false); ?></span>
                                        <select class="select" name="sort_order">
                                            <option value="created_at"><?php echo e(trans('messages.created_at'), false); ?></option>
                                        </select>                                        
                                        <input type="hidden" name="sort_direction" value="desc" />
<button type="button" class="btn btn-xs sort-direction" data-popup="tooltip" title="<?php echo e(trans('messages.change_sort_direction'), false); ?>" role="button" class="btn btn-xs">
                                            <span class="material-icons-outlined desc">
sort
</span>
                                        </button>
                                    </span>
                                    <span class="filter-group ml-10">
                                        <span class="title text-semibold text-muted"><?php echo e(trans('messages.type'), false); ?></span>
                                        <select class="select" name="type">
                                            <option value=""><?php echo e(trans('messages.all'), false); ?></option>
                                            <option value="list"><?php echo e(trans('messages.list'), false); ?></option>
                                            <option value="segment"><?php echo e(trans('messages.segment'), false); ?></option>
                                            <option value="page"><?php echo e(trans('messages.page'), false); ?></option>
                                            <option value="subscriber"><?php echo e(trans('messages.subscriber'), false); ?></option>
                                            <option value="campaign"><?php echo e(trans('messages.campaign'), false); ?></option>
                                        </select>                                        
                                    </span>
                                    <!--<span class="text-nowrap">
                                        <input type="text" name="keyword" class="form-control search" value="<?php echo e(request()->keyword, false); ?>" placeholder="<?php echo e(trans('messages.type_to_search'), false); ?>" />
                                        <span class="material-icons-round">
search
</span>
                                    </span>-->
                                </div>
                            <?php endif; ?>
                        </div>
                    </div>
                    
                    <div class="pml-table-container">
                        
                        
                        
                    </div>
                </div>

                <script>
                    var AccountLogsIndex = {
                        getList: function() {
                            return makeList({
                                url: '<?php echo e(action('AccountController@logsListing'), false); ?>',
                                container: $('.listing-form'),
                                content: $('.pml-table-container')
                            });
                        }
                    };
            
                    $(document).ready(function() {
                        AccountLogsIndex.getList().load();
                    });
                </script>
    
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.core.frontend', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/account/logs.blade.php ENDPATH**/ ?>