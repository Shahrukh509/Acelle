<?php if($logs->count() > 0): ?>
    <table class="table table-box pml-table mt-2"
        current-page="<?php echo e(empty(request()->page) ? 1 : empty(request()->page), false); ?>"
    >
        <?php $__currentLoopData = $logs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <tr>
                <td width="1%">
                    <img width="50" class="rounded-circle me-2" src="<?php echo e($item->customer->user->getProfileImageUrl(), false); ?>" alt="">
                </td>
                <td style="width:50%">
                    <p class="mb-0">                                                
                        <?php echo $item->message(); ?><br />
                        <span class="text-muted2"><?php echo e(trans('messages.' . $item->type), false); ?></span>
                    </p>
                </td>
                <td class="text-end">
                    <div class="pull-right">
                        <div class="text-semibold"><?php echo e($item->created_at->diffForHumans(), false); ?></div>
                        <span class="text-muted2"><?php echo e(Acelle\Library\Tool::formatDateTime($item->created_at), false); ?></span>
                    </div>
                </td>
            </tr>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </table>
    <?php echo $__env->make('elements/_per_page_select', ["items" => $logs], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                
<?php elseif(!empty(request()->keyword) || !empty(request()->filters["type"])): ?>
    <div class="empty-list">
        <span class="material-icons-outlined">
history_toggle_off
</span>
        <span class="line-1">
            <?php echo e(trans('messages.no_search_result'), false); ?>

        </span>
    </div>
<?php else: ?>                    
    <div class="empty-list">
        <span class="material-icons-outlined">
history_toggle_off
</span>
        <span class="line-1">
            <?php echo e(trans('messages.no_action_logs'), false); ?>

        </span>
    </div>
<?php endif; ?><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/account/logs_listing.blade.php ENDPATH**/ ?>