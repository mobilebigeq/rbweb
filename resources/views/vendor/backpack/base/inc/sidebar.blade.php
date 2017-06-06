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
          <li><a><i class="fa fa-cog"></i> <span>Masters</span></a>
              <ul class="treeview-menu">
                <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/cities') }}"><i class="fa fa-cog"></i> <span>City Master</span></a></li>
                <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/doctorspecialization') }}"><i class="fa fa-cog"></i> <span>Doctor's - Specializations</span></a></li>
                <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/hospitals') }}"><i class="fa fa-cog"></i> <span>Hospitals</span></a></li>
                <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/page_description') }}"><i class="fa fa-cog"></i> <span>Page Description</span></a></li>
                <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/speciality_masters') }}"><i class="fa fa-cog"></i> <span>Speciality_Masters</span></a></li>
                <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/healthcare_service') }}"><i class="fa fa-cog"></i> <span>HealthCare_service</span></a></li>
                <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/brief_facilities') }}"><i class="fa fa-cog"></i> <span>Brief_Facilities</span></a></li>
                <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/pagemetadata') }}"><i class="fa fa-cog"></i> <span>Page Metadata</span></a></li>
              </ul>
          </li>
          <li><a><i class="fa fa-cog"></i> <span>Home</span></a>
              <ul class="treeview-menu">
                  <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/homehighlights') }}"><i class="fa fa-cog"></i> <span>Highlights</span></a></li>
                  <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/righthighlights') }}"><i class="fa fa-cog"></i> <span>Right Highlights</span></a></li>
                  <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/rainbowguide') }}"><i class="fa fa-cog"></i> <span>Rainbow Guide</span></a></li>
                  <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/centre_panel') }}"><i class="fa fa-cog"></i> <span>Centre Panel</span></a></li>
                  <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/categories') }}"><i class="fa fa-cog"></i> <span>Categories</span></a></li>
              </ul>
          </li>


          <li><a><i class="fa fa-cog"></i> <span>About Us</span></a>
              <ul class="treeview-menu">
                <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/what_we_do_details') }}"><i class="fa fa-cog"></i> <span>What We Do Details</span></a></li>
                <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/md_message') }}"><i class="fa fa-cog"></i> <span>MD Messages</span></a></li>
                <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/boardofdirectors') }}"><i class="fa fa-cog"></i> <span>Board Of Directors</span></a></li>
                <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/history_details') }}"><i class="fa fa-cog"></i> <span>History Details</span></a></li>
                <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/awards_history') }}"><i class="fa fa-cog"></i> <span>Awards History</span></a></li>
                <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/media_press_release') }}"><i class="fa fa-cog"></i> <span>Media Press Releases</span></a></li>
                <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/careers') }}"><i class="fa fa-cog"></i> <span>Careers</span></a></li>
                <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/homeevents') }}"><i class="fa fa-cog"></i> <span>Events</span></a></li>
                  
              </ul>
          </li>


          <li><a><i class="fa fa-cog"></i> <span>Children’s Health</span></a>
              <ul class="treeview-menu">

              <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/about') }}"><i class="fa fa-cog"></i> <span>About Child Care</span></a></li>

               <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/doctors') }}"><i class="fa fa-cog"></i> <span>Doctors</span></a></li>

                <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/doctors_desk') }}"><i class="fa fa-cog"></i> <span>Doctors Desk</span></a></li>

                <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/doctors_desk_questions') }}"><i class="fa fa-cog"></i> <span>Doctors Desk Questions</span></a></li>

                <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/our_specialities') }}"><i class="fa fa-cog"></i> <span>Our Specialities</span></a></li>

                  <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/our_speciality_features') }}"><i class="fa fa-cog"></i> <span>Our Speciality Features</span></a></li>

                  <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/testimonial_details') }}"><i class="fa fa-cog"></i> <span>Testimonial Details</span></a></li>


                   <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/vaccination_details') }}"><i class="fa fa-cog"></i> <span>Vaccination Details</span></a></li>
                   




                 


                  <li><a href="{{ url(config('backpack.base.route_prefix', 'admin').'/centers') }}"><i class="fa fa-cog"></i> <span>Centers</span></a></li>




                   


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
