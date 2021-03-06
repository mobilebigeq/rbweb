@if (Auth::check())
    <!-- Left side column. contains the sidebar -->
    <aside class="main-sidebar">
      <!-- sidebar: style can be found in sidebar.less -->
      <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
          <div class="pull-left image">
            <img src="https://placehold.it/160x160/00a65a/ffffff/&text={{ mb_substr(Auth::user()->name, 0, 1) }}" class="img-circle" alt="User Image">
          </div>
          <div class="pull-left info">
            <p>{{ Auth::user()->name }}</p>
            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
          </div>
        </div>
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
          <li class="header">{{ trans('backpack::base.administration') }}</li>
          <!-- ================================================ -->
          <!-- ==== Recommended place for admin menu items ==== -->
          <!-- ================================================ -->
          <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/dashboard') }}"><i class="fa fa-dashboard"></i> <span>{{ trans('backpack::base.dashboard') }}</span></a></li>
          <li><a><i class="fa fa-cog"></i> <span>Home</span></a>
              <ul class="treeview-menu">
                  <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/homehighlights') }}"><i class="fa fa-cog"></i> <span>Highlights</span></a></li>
                  <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/righthighlights') }}"><i class="fa fa-cog"></i> <span>Right Highlights</span></a></li>
                  <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/specialities') }}"><i class="fa fa-cog"></i> <span>Specialities</span></a></li>
                  <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/homeevents') }}"><i class="fa fa-cog"></i> <span>Events</span></a></li>
                  <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/homeawards') }}"><i class="fa fa-cog"></i> <span>Awards</span></a></li>
                  <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/rainbowguide') }}"><i class="fa fa-cog"></i> <span>Rainbow Guide</span></a></li>
                  <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/centers') }}"><i class="fa fa-cog"></i> <span>Centers</span></a></li>
                  <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/categories') }}"><i class="fa fa-cog"></i> <span>Categories</span></a></li>
                  <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/aboutus') }}"><i class="fa fa-cog"></i> <span>About Us</span></a></li>
                  <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/doctors') }}"><i class="fa fa-cog"></i> <span>Doctors</span></a></li>
              </ul>
          </li>
          <!-- <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/tag') }}"><i class="fa fa-tag"></i> <span>Manage Tags</span></a></li> -->

          <!-- ======================================= -->
          <li class="header">{{ trans('backpack::base.user') }}</li>
          <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/logout') }}"><i class="fa fa-sign-out"></i> <span>{{ trans('backpack::base.logout') }}</span></a></li>
        </ul>
      </section>
      <!-- /.sidebar -->
    </aside>
@endif
