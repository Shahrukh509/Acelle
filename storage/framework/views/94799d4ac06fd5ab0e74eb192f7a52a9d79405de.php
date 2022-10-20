<div>
    <label class="layout-select me-4">
        <input type="radio" name="menu_layout" value="top" <?php echo e($menu_layout == 'top' || $menu_layout == 'none' ? 'checked' : '', false); ?> class="styled" />
        <img class="ms-2" src="<?php echo e(url('images/layout-menu-top.svg'), false); ?>" width="150px" />
    </label>
    <label class="layout-select">
        <input type="radio" name="menu_layout" value="left" <?php echo e($menu_layout == 'left' ? 'checked' : '', false); ?> class="styled"  />
        <img class="ms-2" src="<?php echo e(url('images/layout-menu-left.svg'), false); ?>" width="150px" />
    </label>
</div>

<script>
    $(function() {
        $('[name=menu_layout]').on('change', function(e) {
            var type = $('[name=menu_layout]:checked').val();

            // reset classes
            $('body').removeClass('topbar');
            $('body').removeClass('leftbar');
            $('body').removeClass('leftbar-closed');
            $('.navbar-main').css('margin-top', '');

            $('body').addClass(type + 'bar');
        });
    })
</script><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/layouts/core/_menu_layout_switch.blade.php ENDPATH**/ ?>