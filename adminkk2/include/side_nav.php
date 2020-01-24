
  <!-- =============================================== -->

  <!-- Left side column. contains the sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="http://<?php echo $_SERVER['SERVER_NAME'];?>/kevo/assets/img/user.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><?php echo $_SESSION['admin_username'];?></p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="http://<?php echo $_SERVER['SERVER_NAME'];?>/kevo/"><i class="fa fa-circle-o"></i> System home</a></li>
            <li><a href="http://<?php echo $_SERVER['SERVER_NAME'];?>/kevo/adminkk2"><i class="fa fa-circle-o"></i> Admin home</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-bed"></i>
            <span>Rooms</span>
          </a>
          <ul class="treeview-menu">
            <li><a href="http://<?php echo $_SERVER['SERVER_NAME'];?>/kevo/adminkk2/rooms/"><i class="fa fa-circle-o"></i> Summary</a></li>
            <li><a href="http://<?php echo $_SERVER['SERVER_NAME'];?>/kevo/adminkk2/rooms/available.php"><i class="fa fa-circle-o"></i> Available</a></li>
            <li><a href="http://<?php echo $_SERVER['SERVER_NAME'];?>/kevo/adminkk2/rooms/occupied.php"><i class="fa fa-circle-o"></i> Occupied</a></li>
          </ul>
        </li>
        <li>
          <a href="../widgets.html">
            <i class="fa fa-money"></i> <span>Payments</span>
          </a>
        </li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- =============================================== -->