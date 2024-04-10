

     <!-- Vertical navbar -->
     <div class="vertical-nav bg-white" id="sidebar">
        <div class="py-4 px-3 ">
            <div class="media d-flex align-items-center">
                <img src="{{ asset("images/logo.png") }}" alt="..."  class="mr-3  img-thumbnail ">
            </div>
        </div>
        <ul class="nav flex-column bg-white mb-0">
            <li class="nav-item vr_parent_dd vr-parent-dd">
                <a href="/" class="nav-link text-dark font-italic vr_dd_target vr-dd-target">
                    <i class="fas fa-tachometer-alt text-primary"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            <li class="nav-item vr_parent_dd vr-parent-dd">
                <a href="/dashboard/user" class="nav-link text-dark font-italic vr_dd_target vr-dd-target">
                    <i class="fas fa-user-cog text-primary"></i>
                    <span>User</span>
                </a>
            </li>
            <li class="nav-item vr_parent_dd vr-parent-dd">
                <a href="#1" class="nav-link text-dark vr_dd_target vr-dd-target">
                    <i class="fas fa-landmark text-primary"></i>
                    History Management
                </a>
                <ul class="vr_dd_menu vr--dd--menu">
                  <li><a class="dropdown-item vr--dd-menu-list vr__dd_menu_list superLink" href="/dashboard/art" data-turbolinks=”false”>Art</a></li>
                  <li><a class="dropdown-item vr--dd-menu-list vr__dd_menu_list superLink" href="/dashboard/history">History</a></li>
                  <li><a class="dropdown-item vr--dd-menu-list vr__dd_menu_list superLink" href="/dashboard/civilization">Civilization</a></li>
                </ul>
            </li>
            <li class="nav-item vr_parent_dd vr-parent-dd">
                <a href="/dashboard/media" class="nav-link text-dark font-italic vr_dd_target vr-dd-target">
                    <i class="fas fa-share-alt text-primary"></i>
                    <span>Media</span>
                </a>
            </li>
            <li class="nav-item vr_parent_dd vr-parent-dd">
                <a href="/dashboard/site_config" class="nav-link text-dark font-italic vr_dd_target vr-dd-target">
                    <i class="fas fa-cogs text-primary"></i>
                    <span>Site Config</span>
                </a>
            </li>
            <li class="nav-item vr_parent_dd vr-parent-dd">
                <a href="/dashboard/contact" class="nav-link text-dark font-italic vr_dd_target vr-dd-target">
                    <i class="fas fa-cogs text-primary"></i>
                    <span>Contact</span>
                </a>
            </li>
            
        </ul>
    </div>   