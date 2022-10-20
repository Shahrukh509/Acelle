<?php
    $icons = [
        'warning' =>  'report_problem',
        'info' =>  'notifications_active',
        'danger' =>  'report',
        'error' =>  'report',
    ];

    if ($level == 'error') {
        $level = 'danger';
    }

    if (isset($params)) {
        $paramsString = implode(
            ' ',
            collect($params)
            ->map(function ($value, $key) {
                return "$key=\"$value\"";
            })
            ->values()->all()
        );
    }
?>
<div <?php echo $paramsString ?? ''; ?> title="Debug: <?php echo e(isset($debugg) ? $debug : '[ empty ]', false); ?>" class="alert alert-<?php echo e($level, false); ?> shadow-sm" style="display: flex; flex-direction: row; align-items: center; cursor: pointer">
    <div>
        <?php if(isset($title)): ?>
            <h4 class="mb-0"><?php echo e($title, false); ?></h4>
        <?php endif; ?>
        <p><?php echo $message; ?></p>
    </div>
</div>
<?php /**PATH C:\xampp\htdocs\acellemail\resources\views/elements/_notification.blade.php ENDPATH**/ ?>