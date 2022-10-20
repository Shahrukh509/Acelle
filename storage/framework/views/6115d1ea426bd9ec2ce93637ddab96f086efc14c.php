<li class="nav-item dropdown">
    <a href="<?php echo e(action('TemplateController@index'), false); ?>" class="nav-link d-flex align-items-center ps-3 pe-1 py-3 lvl-1 dropdown-toggle"
        id="content-menu" data-bs-toggle="dropdown" aria-expanded="false">
        <i class="navbar-icon">
            <img src="<?php echo e(Auth::user()->getProfileImageUrl(), false); ?>" style="border-radius:100%;" class="menu-user-avatar" alt="">
        </i>
        <span><?php echo e(Auth::user()->displayName(), false); ?></span>
        <?php if(Auth::user()->customer->hasSubscriptionNotice()): ?>
            <i class="material-icons-outlined customer-warning-icon text-danger" style="right: 3px!important;
            color: rgb(236, 124, 124)!important;
            top: 2px!important;
            position: absolute;
            text-indent: 0;transform:scale(1.2)">info</i>
        <?php endif; ?>
    </a>
    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-bottom top-user-menus" aria-labelledby="content-menu">
        <li class="backdrop  backdrop-frontend p-4 d-flex align-items-center justify-content-center">
            <img src="<?php echo e(url('images/paper-airplane.svg'), false); ?>" width="100px" />
        </li>
        <li class="p-3" style="width: 300px">
            <div class="d-flex mb-2">
                <div class="big-avatar me-3">
                    <a href="<?php echo e(action('AccountController@profile'), false); ?>">
                        <img width="80px" class="" src="<?php echo e(Auth::user()->getProfileImageUrl(), false); ?>"
                            style="border-radius:100%"
                            class="menu-user-avatar" alt="">
                    </a>
                </div>
                <div>
                    <a href="<?php echo e(action('AccountController@profile'), false); ?>" class="fs-6 fw-600 d-flex align-items-center">
                        <span class="me-3"><?php echo e(Auth::user()->displayName(), false); ?></span>
                    </a>
                    <p class="mb-1 small text-muted"><?php echo e(Auth::user()->email, false); ?></p>
                    <?php if(Auth::user()->customer->status): ?> 
                        <span class="label label-flat bg-<?php echo e(Auth::user()->customer->status, false); ?>"><?php echo e(trans('messages.' . Auth::user()->customer->status), false); ?></span>
                    <?php endif; ?>
                </div>
            </div>
        </li>
        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check("admin_access", Auth::user())): ?>
            <li class="border-bottom"><a href="<?php echo e(action("Admin\HomeController@index"), false); ?>" class="dropdown-item d-flex align-items-center">
            <i class="navbar-icon">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 93.8 89" style="enable-background:new 0 0 93.8 89;" xml:space="preserve"><style type="text/css">.st0{fill:#333333;}</style><g id="Layer_2_1_"><g id="Layer_1-2"><path class="st0" d="M59.2,89H18.4C8.3,89,0,79.6,0,68.1V20.8C0,9.3,8.3,0,18.4,0h40.8c9.4,0,17.3,8,18.3,18.7l-7,0.6 C69.9,12.3,65,7,59.2,7H18.4C12.1,7,7,13.2,7,20.8v47.3C7,75.8,12.1,82,18.4,82h40.8c5.8,0,10.7-5.3,11.3-12.4l7,0.6 C76.5,80.9,68.7,89,59.2,89z"/><rect x="40.6" y="41" class="st0" width="24.1" height="7"/><polygon class="st0" points="58.8,64.7 93.8,44.5 58.8,24.2 "/></g></g></svg>
            </i><?php echo e(trans('messages.admin_view'), false); ?></a></li>
            <li class="divider"></li>
        <?php endif; ?>
        <?php if(request()->user()->customer->activeSubscription()): ?>
            <li class="nav-item">
                <a href="#" class="dropdown-item top-quota-button d-flex align-items-center" data-url="<?php echo e(action("AccountController@quotaLog"), false); ?>">
                <i class="navbar-icon">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 102.5 100.8" style="enable-background:new 0 0 102.5 100.8;" xml:space="preserve"><style type="text/css">.st0{fill:#333333;}</style><g id="Layer_2_1_"><g id="Layer_1-2"><path class="st0" d="M18.3,92.5h-2.5C7.1,92.5,0,85.4,0,76.7V15.8C0,7.1,7.1,0,15.8,0h60.9c8.7,0,15.8,7.1,15.8,15.8v5.5 c0,1.9-1.6,3.5-3.5,3.5s-3.5-1.6-3.5-3.5v-5.5c0-4.9-3.9-8.8-8.8-8.8H15.8C10.9,7,7,10.9,7,15.8v60.9c0,4.9,3.9,8.8,8.8,8.8h2.5 c1.9,0,3.5,1.6,3.5,3.5S20.2,92.5,18.3,92.5z"/><path class="st0" d="M65.3,100.8c-20.5,0-37.2-16.7-37.2-37.2c0-20.5,16.7-37.2,37.2-37.2c20.5,0,37.2,16.7,37.2,37.2 C102.5,84.1,85.8,100.8,65.3,100.8z M65.3,33.4c-16.7,0-30.2,13.5-30.2,30.2s13.5,30.2,30.2,30.2s30.2-13.5,30.2-30.2 S82,33.4,65.3,33.4z"/><path class="st0" d="M83,81.8c-0.7,0-1.4-0.2-2-0.7L63.4,68.4c-0.9-0.6-1.4-1.6-1.5-2.7l-0.6-16.4c-0.1-1.9,1.4-3.6,3.4-3.6 c1.9-0.1,3.6,1.4,3.6,3.4l0.5,14.7L85,75.5c1.6,1.1,1.9,3.3,0.8,4.9C85.2,81.3,84.1,81.8,83,81.8z"/><path class="st0" d="M40,23.6H19.5c-1.9,0-3.5-1.6-3.5-3.5s1.6-3.5,3.5-3.5H40c1.9,0,3.5,1.6,3.5,3.5S41.9,23.6,40,23.6z"/><path class="st0" d="M25.8,36.7h-6.3c-1.9,0-3.5-1.6-3.5-3.5s1.6-3.5,3.5-3.5h6.3c1.9,0,3.5,1.6,3.5,3.5S27.7,36.7,25.8,36.7z"/></g></g></svg>
            </i>
                    <span class=""><?php echo e(trans('messages.used_quota'), false); ?></span>
                </a>
            </li>
        <?php endif; ?>
        <li class="nav-item" rel0="SubscriptionController/index">
            <a href="<?php echo e(action('SubscriptionController@index'), false); ?>" class="dropdown-item d-flex align-items-center">
            <i class="navbar-icon">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 92 94.2" style="enable-background:new 0 0 92 94.2;" xml:space="preserve"><style type="text/css">.st0{fill:#333333;}</style><g id="Layer_2_1_"><g id="Layer_1-2"><path class="st0" d="M46.1,94.2c-12.3,0-24.6-4.8-33.8-14.3c-1.3-1.4-1.3-3.6,0.1-4.9c1.4-1.3,3.6-1.3,4.9,0.1 C32.7,90.9,58,91.3,73.9,76c5.6-5.4,9.5-12.3,11.2-20c0.4-1.9,2.3-3.1,4.2-2.6c1.9,0.4,3.1,2.3,2.6,4.2c-2,9-6.6,17.1-13.2,23.5 C69.6,89.8,57.8,94.2,46.1,94.2z"/><polygon class="st0" points="4.1,89.6 3.5,56.8 32.2,72.6 "/><path class="st0" d="M3.5,40.9c-0.3,0-0.5,0-0.8-0.1c-1.9-0.4-3.1-2.3-2.6-4.2C5,15.1,23.9,0,46,0c0.1,0,0.1,0,0.2,0 C58.8,0,71,5.2,79.7,14.3c1.3,1.4,1.3,3.6-0.1,4.9c-1.4,1.3-3.6,1.3-4.9-0.1C67.3,11.4,56.9,7,46.2,7c-0.1,0-0.1,0-0.2,0 C27.2,7,11.1,19.8,6.9,38.2C6.5,39.8,5.1,40.9,3.5,40.9z"/><polygon class="st0" points="59.8,21.6 88.5,37.4 87.9,4.6 "/><path class="st0" d="M43.3,69.9V64c-3.4,0-6.8-0.9-9.8-2.6l1.7-5.6c2.8,1.6,6,2.5,9.3,2.6c3.8,0,6.4-1.9,6.4-4.7s-2.1-4.5-6.6-6.1 C38,45.3,34,42.4,34,36.9s3.6-9.1,9.6-10.2v-5.9h4.9v5.6c2.9,0,5.7,0.7,8.3,2l-1.6,5.5c-2.5-1.4-5.3-2.1-8.2-2.1 c-4.2,0-5.7,2.2-5.7,4.2s2.2,3.9,7.3,5.9c6.7,2.5,9.7,5.8,9.7,11.1s-3.5,9.6-10.1,10.7v6.2H43.3z"/></g></g></svg>
            </i><?php echo e(trans('messages.subscriptions'), false); ?>

                <span class="position-relative" style="width:100%">
                    <?php if(Auth::user()->customer->hasSubscriptionNotice()): ?>
                        <i class="material-icons-outlined subscription-warning-icon text-danger" style="font-size: inherit;
                            position: absolute;
                            right: 0;
                            top: 0;margin-top: -10px">info</i>
                    <?php endif; ?>
                </span>
            </a>
        </li>
        <li class="nav-item" rel0="AccountController/billing"><a href="<?php echo e(action("AccountController@billing"), false); ?>" class="dropdown-item d-flex align-items-center">
            <i class="navbar-icon">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 838.9 665.3" style="enable-background:new 0 0 838.9 665.3;" xml:space="preserve"><style type="text/css">.st0{fill:#333333;}</style><g id="Layer_2_1_"><g id="Layer_1-2"><path class="st0" d="M735.8,665.3H103.1C46.3,665.3,0,619.1,0,562.2V103.1C0,46.3,46.3,0,103.1,0h632.7 c56.8,0,103.1,46.3,103.1,103.1v459.1C838.9,619.1,792.6,665.3,735.8,665.3z M103.1,55C76.6,55,55,76.6,55,103.1v459.1 c0,26.5,21.6,48.1,48.1,48.1h632.7c26.5,0,48.1-21.6,48.1-48.1V103.1c0-26.5-21.6-48.1-48.1-48.1H103.1z"/><path class="st0" d="M330.1,364.4H161.9c-15.2,0-27.5-12.3-27.5-27.5V168.7c0-15.2,12.3-27.5,27.5-27.5h168.2 c15.2,0,27.5,12.3,27.5,27.5v168.2C357.6,352.1,345.3,364.4,330.1,364.4z M189.4,309.4h113.2V196.2H189.4V309.4z"/><path class="st0" d="M626.1,215.8H449.6c-15.2,0-27.5-12.3-27.5-27.5s12.3-27.5,27.5-27.5h176.5c15.2,0,27.5,12.3,27.5,27.5 S641.3,215.8,626.1,215.8z"/><path class="st0" d="M626.1,360.4H449.6c-15.2,0-27.5-12.3-27.5-27.5s12.3-27.5,27.5-27.5h176.5c15.2,0,27.5,12.3,27.5,27.5 S641.3,360.4,626.1,360.4z"/><path class="st0" d="M636.7,521.4H161.9c-15.2,0-27.5-12.3-27.5-27.5s12.3-27.5,27.5-27.5h474.8c15.2,0,27.5,12.3,27.5,27.5 S651.9,521.4,636.7,521.4z"/></g></g></svg>
            </i><?php echo e(trans('messages.billing'), false); ?>

        
        </a></li>
        <li class="nav-item" rel0="AccountController/profile"><a href="<?php echo e(action("AccountController@profile"), false); ?>" class="dropdown-item d-flex align-items-center">
            <i class="navbar-icon">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 88.3 88.3" style="enable-background:new 0 0 88.3 88.3;" xml:space="preserve"><style type="text/css">.st0{fill:#333333;}</style><g id="Layer_2_1_"><g id="Layer_1-2"><g><path id="Layer_1-3_1_" class="st0" d="M44.2,1C20.4,0.9,1,20.1,0.9,43.9c0,12.4,5.2,24.1,14.5,32.4l0,0l0.6,0.6l0.4,0.3 c1.8,1.5,3.7,2.8,5.7,4.1l0.5,0.2l3,1.7h0.1c2.3,1,4.6,1.9,7,2.6h0.1l3.6,0.8h0.3l3.5,0.5h8l3.5-0.5H52l3.5-0.8h0.1 c2.4-0.7,4.8-1.6,7.1-2.6l0,0c1.1-0.5,2.1-1.1,3.1-1.7l0.5-0.2l2.6-1.8l0.7-0.5l2.4-1.8l0.3-0.3l0.7-0.6l0,0 c17.7-16,19.2-43.3,3.2-61C68,6.2,56.4,1,44.2,1z M44.2,44.2c-8,0-14.4-6.4-14.4-14.4c0-8,6.4-14.4,14.4-14.4s14.4,6.4,14.4,14.4 S52.2,44.2,44.2,44.2L44.2,44.2z M49.6,47.8c10.9,0,19.8,8.9,19.8,19.8v7.1l-0.3,0.2l-2.2,1.6l-0.4,0.4L64,78.4l-0.5,0.3 c-3.8,2.1-8,3.6-12.3,4.4h-0.3l-3.1,0.4h-7.2L37.2,83c-3.2-0.6-6.4-1.5-9.4-2.9h-0.3c-1.1-0.5-2.1-1.1-3.1-1.7l-2.5-1.5l-0.5-0.4 l-2.2-1.6c-0.1-0.1-0.1-0.2-0.2-0.2v-7.1c0-10.9,8.9-19.8,19.8-19.8h0H49.6z M73,71.3v-3.7c0-11.1-7.8-20.7-18.7-22.9 c4.9-3.4,7.8-8.9,7.9-14.9c0-9.9-8.1-18-18-18s-18,8.1-18,18c0,6,3,11.5,7.9,14.9c-10.9,2.2-18.7,11.8-18.7,22.9v3.7 C0.5,55.4,1.3,30.4,17.2,15.5S58.1,1.3,73,17.2C87.3,32.4,87.3,56.1,73,71.3z"/><path class="st0" d="M48.3,88.1l-8.2,0l-3.9-0.5l-3.8-0.8c-2.4-0.7-4.7-1.6-6.9-2.6h-0.1l-3.2-1.8l-0.6-0.3c-2-1.3-4-2.7-5.8-4.2 l-0.5-0.4L14.7,77C5.3,68.6-0.1,56.6-0.1,43.9C0,19.7,19.8,0,44,0c0.1,0,0.1,0,0.2,0c12.5,0,24.4,5.4,32.7,14.6 C93.2,32.7,91.8,60.7,73.7,77l-1.1,1l-3.1,2.3l-2.8,1.9l-0.4,0.2c-1,0.6-2.1,1.2-3.1,1.7c-2.4,1.1-4.8,1.9-7.3,2.7l-0.3,0 L52,87.6h-0.2L48.3,88.1z M40.3,86.1h7.9l3.8-0.5l3.6-0.8c2.3-0.7,4.6-1.5,6.8-2.5c1-0.5,2-1,3-1.6l0.2-0.1l0.4-0.2l3.2-2.2 l2.6-2l0.8-0.7C89.6,60,91,33.2,75.4,16C67.5,7.1,56.1,2,44.2,2h0c0,0-0.1,0-0.2,0C20.9,2,2,20.8,1.9,44 c0,12.1,5.1,23.6,14.1,31.6l0.6,0.6l0.3,0.3c1.8,1.5,3.6,2.8,5.6,4l0.5,0.2l3,1.7c2.2,1,4.4,1.8,6.8,2.5l0.2,0l3.8,0.8L40.3,86.1 z M47.9,84.5l-7.4,0L37.1,84c-3.3-0.6-6.5-1.5-9.5-2.9h-0.3L27.1,81c-1.1-0.5-2.2-1.1-3.2-1.8l-2.6-1.6l-0.5-0.4l-2.2-1.6H18 v-8.1c0-11.5,9.3-20.8,20.8-20.8h10.8c11.5,0,20.8,9.3,20.8,20.8v7.6l-0.7,0.5l-2.1,1.5L67,77.8l-3,1.8c-4,2.2-8.2,3.7-12.6,4.5 l-0.4,0L47.9,84.5z M40.7,82.5h7.1l3.4-0.4c4.2-0.8,8.2-2.2,11.9-4.3l2.9-1.7l0.4-0.4l2.1-1.5v-6.6c0-10.4-8.4-18.8-18.8-18.8 H38.8C28.4,48.8,20,57.2,20,67.6v6.6l2.5,1.8l2.4,1.5c0.9,0.6,1.9,1.1,2.8,1.6H28l0.2,0.1c2.9,1.3,6,2.3,9.2,2.8L40.7,82.5z M16.4,73.8L14.7,72c-7.4-7.9-11.3-18.2-11-29c0.3-10.8,4.9-20.8,12.8-28.2c16.3-15.3,42-14.5,57.2,1.8 c14.6,15.5,14.6,39.9,0,55.4L72,73.8v-6.2c0-10.6-7.5-19.8-17.9-21.9l-2.3-0.5l1.9-1.3c4.6-3.2,7.4-8.5,7.5-14.1 c0-9.4-7.6-17-17-17c-9.4,0-17,7.6-17,17c0,5.6,2.8,10.9,7.5,14.1l2,1.3l-2.3,0.5C23.9,47.8,16.4,57,16.4,67.6V73.8z M44.2,5.8 c-9.5,0-18.9,3.4-26.3,10.4C10.4,23.2,6,32.8,5.7,43c-0.3,9.4,2.8,18.4,8.7,25.6v-1c0-10.8,7.2-20.4,17.4-23.4 c-4.2-3.6-6.6-8.8-6.6-14.4c0-5.1,2-9.8,5.6-13.4s8.4-5.6,13.4-5.6c10.5,0,19,8.5,19,19c0,5.6-2.5,10.8-6.7,14.4 C66.8,47.3,74,56.8,74,67.6v1c12.1-14.8,11.5-36.6-1.7-50.7C64.7,9.9,54.5,5.8,44.2,5.8z M44.2,45.2c-8.5,0-15.4-6.9-15.4-15.4 s6.9-15.4,15.4-15.4c8.5,0,15.4,6.9,15.4,15.4S52.7,45.2,44.2,45.2z M44.2,16.4c-7.4,0-13.4,6-13.4,13.4c0,7.4,6,13.4,13.4,13.4 c7.4,0,13.4-6,13.4-13.4C57.6,22.4,51.6,16.4,44.2,16.4z"/></g></g></g></svg>
            </i><?php echo e(trans('messages.account'), false); ?>

        
        </a></li>
        <?php if(Auth::user()->customer->canUseApi()): ?>
            <li class="nav-item" rel0="AccountController/api">
                <a href="<?php echo e(action("AccountController@api"), false); ?>" class="dropdown-item d-flex align-items-center">
                <i class="navbar-icon">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 100.9 112" style="enable-background:new 0 0 100.9 112;" xml:space="preserve"><style type="text/css">.st0{fill:#333333;}</style><g id="Layer_2_1_"><g id="Layer_1-2"><path class="st0" d="M16.8,71c-0.6,0-1.3-0.2-1.9-0.6c-8-5.1-13.4-12.7-14.6-20.8c-0.9-5.8,0.3-11.1,3.5-15 c4.5-5.4,11.1-6.9,16.4-7.1c-0.9-4.5-1.1-10.7,2.5-16.4c3.2-5.3,9.1-9.1,16-10.6c7.5-1.5,15.4-0.1,21,3.9c5.2,3.7,7.7,9,8.9,13 c4.8-2.6,10.3-3.1,15-1.1c3.5,1.5,6.4,4.2,8.2,7.5c0.9,1.7,0.2,3.8-1.5,4.7c-1.7,0.9-3.8,0.2-4.7-1.5c-1-1.9-2.6-3.4-4.6-4.3 c-3.8-1.5-8.8-0.2-12.3,3.2c-1,1-2.4,1.3-3.7,0.8c-1.3-0.5-2.2-1.7-2.2-3.1c-0.1-0.9-0.7-9.1-7.1-13.7C51.5,7.3,45.7,6.3,40,7.5 c-5.1,1-9.2,3.7-11.5,7.4c-3.7,5.9-1.3,13.1-0.4,15.2c0.5,1.1,0.3,2.4-0.4,3.4c-0.7,1-1.9,1.5-3.1,1.4l-0.3,0 c-3.2-0.3-11-0.6-15.1,4.4c-1.9,2.3-2.6,5.7-2,9.4c1,6.1,5.2,11.9,11.5,16c1.6,1,2.1,3.2,1.1,4.8C19.1,70.4,18,71,16.8,71z"/><g><path class="st0" d="M68.2,58.6c5.8,3.3,7.9,10.8,4.5,16.6c-3.3,5.8-10.8,7.9-16.6,4.5c-5.6-3.2-7.7-10.2-4.9-16 c1.8-3.7,5.4-6.2,9.5-6.7c0.8-0.1,1.5,0.5,1.7,1.3c0.1,0.9-0.5,1.6-1.3,1.8c-3.1,0.3-5.8,2.2-7.1,5c-2.2,4.5-0.3,10,4.2,12.2 c4.5,2.2,10,0.3,12.2-4.2c2.2-4.5,0.3-9.9-4.2-12.1c-0.7-0.3-1.1-1-0.9-1.7c-0.1-0.2-0.2-0.5-0.2-0.7V33h-5.9v10.4l-1.3,0.3 c-6.4,1-12.2,4.5-16.2,9.7l-0.8,1.1L31.3,49l-3,5.1l9.8,5.7L37.7,61c-0.8,2.6-1.2,5.2-1.2,7.9c0,3.4,0.7,6.8,2,9.9l0.5,1.3 l-10.7,6.1l3,5.2l10.9-6.3l0.9,0.9c3.8,4.3,9.1,7.2,14.8,8.1l1.3,0.2v13.1h5.9V94.3l1.3-0.2c5.7-0.9,10.9-3.8,14.8-8.1l0.9-0.9 L93,91.4l3-5.2l-10.7-6.1l0.5-1.3c1.3-3.1,2-6.5,2-9.9c0-2.7-0.4-5.3-1.2-7.9l-0.4-1.2l9.8-5.7L93,49l-9.6,5.5l-0.8-1.1 c-2.6-3.3-5.9-6-9.7-7.7c-0.8-0.3-1.1-1.2-0.8-2c0,0,0-0.1,0.1-0.1c0.3-0.7,1.1-1.1,1.8-0.8c0.1,0,0.1,0.1,0.2,0.1 c3.9,1.7,7.3,4.3,10,7.6l7.9-4.6c1.1-0.6,2.5-0.2,3.2,0.9l3.7,6.5c0.6,1,0.3,2.4-0.7,3c0,0-0.1,0-0.1,0.1l-8.3,4.8 c0.7,2.5,1,5.1,1,7.7c0,3.3-0.6,6.7-1.7,9.8l9,5.2c1.1,0.6,1.5,2,0.8,3.1c0,0,0,0,0,0.1l-3.7,6.5c-0.6,1.1-2,1.5-3.1,0.8 c0,0,0,0-0.1,0L82.7,89c-4,4-9,6.7-14.5,7.9v11.3c0,1.3-1,2.3-2.3,2.3h0h-7.5c-1.3,0-2.3-1-2.3-2.3l0,0V96.9 C50.6,95.7,45.6,93,41.6,89l-9.4,5.4c-1.1,0.7-2.5,0.3-3.2-0.7c0,0,0,0,0-0.1l-3.8-6.5c-0.6-1.1-0.2-2.5,0.9-3.2l9-5.2 c-1.1-3.1-1.7-6.5-1.7-9.8c0-2.6,0.3-5.2,1-7.7l-8.3-4.8c-1.1-0.6-1.5-2-0.9-3.1l3.8-6.5c0.7-1.1,2.1-1.5,3.2-0.9l7.9,4.6 c4.1-4.9,9.7-8.3,16-9.6v-8.7c0-1.3,1-2.3,2.3-2.3h7.5c1.3,0,2.3,1,2.3,2.3c0,0,0,0,0,0S68.2,58.6,68.2,58.6z"/><path class="st0" d="M65.9,112h-7.5c-2.1,0-3.8-1.7-3.8-3.8V98.1c-4.9-1.3-9.5-3.7-13.2-7.2l-8.4,4.8c-1.7,1.1-4.1,0.5-5.2-1.3 l-0.1-0.1l-3.8-6.5c-1-1.9-0.4-4.2,1.4-5.2l8-4.6c-0.9-3-1.4-6-1.4-9.1c0-2.3,0.2-4.7,0.8-7l-7.3-4.2c-1.8-1-2.5-3.3-1.5-5.1 l3.8-6.5c1.1-1.8,3.3-2.5,5.2-1.5l6.9,4c3.9-4.3,9.1-7.4,14.8-8.9v-7.5c0-2.1,1.7-3.8,3.8-3.8h7.5c2.1,0,3.8,1.7,3.8,3.8v25.6 c6,3.9,7.9,11.9,4.3,18.2c-3.7,6.6-12.1,8.8-18.7,5.1c-6.3-3.6-8.7-11.5-5.5-17.9c2.1-4.2,6.1-7,10.7-7.5 c1.3-0.1,2.5,0.6,3.1,1.7V34.5h-2.9v10.1l-2.6,0.6c-6.1,1-11.5,4.2-15.2,9.1l-1.6,2.2L31.8,51l-1.5,2.5l9.6,5.6l-0.8,2.4 c-0.8,2.4-1.1,4.9-1.1,7.4c0,3.2,0.6,6.4,1.9,9.3l1,2.5l-10.5,6l1.5,2.6l10.6-6.1l1.7,1.7c3.7,4.1,8.6,6.8,14,7.7l2.6,0.4v12.9 h2.9V93l2.6-0.4c5.4-0.9,10.3-3.6,13.9-7.6l1.8-1.8l10.6,6.1l1.5-2.6l-10.5-6l1-2.5c1.3-3,1.9-6.1,1.9-9.4c0-2.5-0.4-5-1.1-7.4 l-0.8-2.3l9.6-5.6L92.5,51L83,56.5l-1.6-2.2c-2.4-3.1-5.5-5.6-9.1-7.2c-0.7-0.3-1.3-0.9-1.6-1.7c-0.3-0.7-0.3-1.6,0.1-2.3 c0,0,0-0.1,0.1-0.2c0.3-0.7,0.8-1.2,1.5-1.5c0.7-0.3,1.5-0.3,2.2,0c0.1,0,0.2,0.1,0.3,0.1c3.7,1.6,7,4,9.7,7l6.8-4 c1.9-1,4.2-0.4,5.2,1.4l3.7,6.5c0.5,0.8,0.7,1.8,0.4,2.7c-0.2,1-0.8,1.8-1.6,2.3c-0.1,0-0.1,0.1-0.2,0.1l-7.3,4.2 c0.5,2.3,0.8,4.6,0.8,7c0,3.1-0.5,6.2-1.4,9.1l7.9,4.6c0.9,0.5,1.5,1.3,1.8,2.3c0.3,1,0.1,2-0.4,2.9l-0.1,0.1l-3.7,6.4 c-0.5,0.9-1.3,1.5-2.3,1.8c-1,0.3-2,0.1-2.9-0.4l-8.5-4.9c-3.7,3.5-8.3,6-13.2,7.2v10.1C69.7,110.3,68,112,65.9,112z M58,108.9 c0.1,0.1,0.2,0.1,0.4,0.1h7.5c0.1,0,0.3,0,0.4-0.1H58z M66.6,95.6v13c0.1-0.1,0.1-0.2,0.1-0.4V95.7l1.2-0.3 c5.2-1.1,10-3.7,13.8-7.5l0.8-0.8l10.4,6c0.1,0.1,0.2,0.1,0.3,0.1L82.3,87l-0.1,0.1C78.3,91.6,72.7,94.6,66.6,95.6L66.6,95.6z M41.8,87.1l0.8,0.8c3.8,3.8,8.5,6.4,13.8,7.5l1.2,0.3v12.5c0,0.1,0,0.3,0.1,0.4l0-13C51.6,94.6,46,91.6,42,87l0,0l-10.8,6.3 c0.1,0,0.2-0.1,0.3-0.1L41.8,87.1z M97.8,86l-4.1,7.1c0.1-0.1,0.2-0.2,0.3-0.3l3.7-6.5C97.8,86.2,97.8,86.1,97.8,86z M26.4,85.9 c0,0.2,0,0.3,0.1,0.5l3.8,6.5c0.1,0.1,0.2,0.2,0.3,0.3L26.4,85.9z M26.5,54.8c0.1,0.1,0.2,0.2,0.3,0.3l9.3,5.4l-0.3,1.1 c-0.6,2.4-1,4.8-0.9,7.3c0,3.2,0.5,6.3,1.6,9.3l0.4,1.2l-10.1,5.8c-0.1,0.1-0.2,0.2-0.3,0.3l10.6-6l0-0.1 C35.7,76,35,72.5,35,68.9c0-2.8,0.4-5.6,1.3-8.4l0-0.1L26.5,54.8z M87.2,79.4l10.6,6c-0.1-0.1-0.2-0.2-0.3-0.3l-10.1-5.8l0.4-1.2 c1.1-3,1.6-6.1,1.6-9.3c0-2.5-0.3-4.9-0.9-7.3l-0.3-1.1l9.3-5.4c0.1-0.1,0.2-0.2,0.3-0.3L88,60.5l0,0c0.9,2.7,1.3,5.5,1.3,8.4 C89.3,72.5,88.6,76,87.2,79.4L87.2,79.4z M60.8,58.6C60.8,58.6,60.8,58.6,60.8,58.6c-3.6,0.4-6.7,2.6-8.3,5.9 c-2.5,5.1-0.6,11.2,4.3,14c5.1,2.9,11.7,1.1,14.6-4c2.9-5.1,1.1-11.7-4-14.6l-0.7-0.4l0,0.1l0.1,0c5.2,2.6,7.4,8.9,4.9,14.1 c-1.2,2.5-3.4,4.5-6.1,5.4c-2.7,0.9-5.6,0.8-8.1-0.5c-2.5-1.2-4.5-3.4-5.4-6.1s-0.8-5.6,0.5-8.1c1.5-3.2,4.6-5.5,8.2-5.8 C60.9,58.7,60.9,58.7,60.8,58.6C60.9,58.6,60.9,58.6,60.8,58.6z M63.8,59.5c-0.3,1.1-1.2,1.9-2.4,2.1l-0.1,0 c-2.5,0.2-4.8,1.8-5.9,4.1c-0.9,1.8-1,3.9-0.4,5.8s2,3.5,3.9,4.3c3.8,1.8,8.3,0.2,10.2-3.5c1.8-3.7,0.3-8.3-3.5-10.1 C64.4,61.9,63.7,60.8,63.8,59.5z M66.6,58.5c0,0,0,0.1,0,0.1l0.1,0.1V32.2c0-0.1,0-0.3-0.1-0.4V58.5z M30.6,47.3 c-0.1,0.1-0.2,0.2-0.3,0.3l-3.8,6.5c0,0.1-0.1,0.2-0.1,0.3L30.6,47.3z M93.7,47.3l3.7,6.4L94,47.5C93.9,47.4,93.8,47.3,93.7,47.3 z M73.6,44.3L73.6,44.3c4,1.9,7.5,4.7,10.2,8.2l0,0l9.5-5.4c-0.2,0-0.3,0-0.5,0.1l-9,5.2l-0.8-1C80.5,48.4,77.3,45.9,73.6,44.3 L73.6,44.3z M31,47.1l9.5,5.4l0,0c4.2-5.5,10.3-9.2,17.1-10.3l0.1,0V31.8c-0.1,0.1-0.1,0.2-0.1,0.4v9.9l-1.2,0.2 c-5.9,1.2-11.3,4.5-15.2,9.1l-0.8,1l-9-5.2C31.3,47.1,31.2,47.1,31,47.1z M58,31.5h8.3c-0.1-0.1-0.2-0.1-0.4-0.1h-7.5 C58.3,31.4,58.1,31.4,58,31.5z"/></g></g></g></svg>
            </i><?php echo e(trans('messages.campaign_api'), false); ?>

                </a>
            </li>
        <?php endif; ?>
        <li><a href="<?php echo e(url("/logout"), false); ?>" class="dropdown-item d-flex align-items-center">
            <i class="navbar-icon">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 83.9 85.1" style="enable-background:new 0 0 83.9 85.1;" xml:space="preserve"><style type="text/css">.st0{fill:#333333;}</style><g id="Layer_2_1_"><g id="Layer_1-2"><path class="st0" d="M41.8,85.1c-7.9,0-15.7-2.3-22.5-6.6C-0.1,66-5.8,40,6.6,20.6c3.6-5.6,8.6-10.4,14.3-13.7 c1.7-1,3.8-0.4,4.8,1.3c1,1.7,0.4,3.8-1.3,4.8c-4.8,2.8-8.9,6.7-11.9,11.4C2.1,40.6,6.9,62.2,23.1,72.6 C39.3,82.9,60.9,78.2,71.3,62c5-7.9,6.7-17.2,4.7-26.3s-7.4-16.9-15.3-21.9c-1.6-1-2.1-3.2-1.1-4.8c1-1.6,3.2-2.1,4.8-1.1 c9.4,6,15.9,15.4,18.3,26.3s0.4,22.1-5.6,31.6c-6,9.4-15.4,15.9-26.3,18.3C47.9,84.7,44.8,85.1,41.8,85.1z"/><path class="st0" d="M41.9,41.2c-1.9,0-3.5-1.6-3.5-3.5V3.5C38.4,1.6,40,0,41.9,0s3.5,1.6,3.5,3.5v34.2 C45.4,39.6,43.8,41.2,41.9,41.2z"/></g></g></svg>
            </i><?php echo e(trans('messages.logout'), false); ?>

        </a></li>
    </ul>
</li><?php /**PATH C:\xampp\htdocs\acellemail\resources\views/layouts/core/_menu_frontend_user.blade.php ENDPATH**/ ?>