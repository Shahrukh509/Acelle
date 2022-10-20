
<div class="headbar d-flex">
    <div class="me-auto"></div>
    <div class="top-search-container"></div>
</div>

<script>
    $(function() {
        TopSearchBar.init({
            container: $('.top-search-container'),
            sections: [
                new SearchSection({
                    url: '<?php echo e(action('SearchController@general'), false); ?>',
                }),
                new SearchSection({
                    url: '<?php echo e(action('SearchController@campaigns'), false); ?>',
                }),
                new SearchSection({
                    url: '<?php echo e(action('SearchController@lists'), false); ?>',
                }),
                new SearchSection({
                    url: '<?php echo e(action('SearchController@subscribers'), false); ?>',
                }),
                new SearchSection({
                    url: '<?php echo e(action('SearchController@automations'), false); ?>',
                }),
                new SearchSection({
                    url: '<?php echo e(action('SearchController@templates'), false); ?>',
                })
            ],
            lang: {
                no_keyword: `<?php echo trans('messages.search.type_to_search.wording'); ?>`,
                empty_result: `<?php echo trans('messages.search.empty_result'); ?>`,
                tooltip: `<?php echo trans('messages.click_open_app_search'); ?>`,
            }
        });
    });
</script><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/layouts/core/_headbar_frontend.blade.php ENDPATH**/ ?>