
<nav class="var-navbar bg-body-tertiary">
    <div class="vr-wrapper-navbar">
      <div class="vr-flex vr-navbar-left">
        <button id="sidebarCollapse" type="button" class="btn btn-light bg-white rounded-pill shadow-sm px-4 "><i class="fa fa-bars mr-2 vr-icon-menu"></i><i style="display: none" class="fas fa-caret-right vr_icon_right vr-icon-right vr-none"></i> </button>
        <div class="input-group vr-navbar-search-field">
          <input type="text" class="form-control input-text" placeholder="Search products...." aria-label="Recipient's username" aria-describedby="basic-addon2">
          <button class=" vr-navbar-btn-search btn btn-outline-warning btn-lg" type="button"><i class="fa fa-search"></i></button>
        </div>
      </div>
      <div class="vr-navbar-right">
        <div class="vr-navbar-profile">
          @php
              $user = getUser(Auth::user()->id);
          @endphp
              <img src="{{ getPhoto("users",$user->profile) }}" alt="">
        </div>
      </div>
  </div>
</nav>
