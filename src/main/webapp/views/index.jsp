<%@page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Dashboard</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="plugins/morris/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker-bs3.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <script src="${pageContext.request.contextPath}/views/js/echarts-all.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/views/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/views/js/vue.js"></script>
    <!--css引入-->
    <link href="${pageContext.request.contextPath}/views/style/common.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/views/style/style.css" rel="stylesheet" type="text/css">
    <!--js引入-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/views/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/views/js/tab.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style type="text/css">
        * {
            margin: 0px;
            padding: 0px;
        }

        body {
            background: url("images/bg.jpg");
            position: absolute;
            width: 100%;
            height: 100%;
        }

        #Main {
            width: 1000px;
            height: 600px;
            margin: 80px auto 0px;

        #Main .title {
            height: 50px;
            background: #3397e4;
            color: #fff;
            font-size: 26px;
            text-align: center;
            line-height: 50px;
            font-weight: bold;
        }

        #Main #Map {
            height: 550px;
        }

        #Main .Search {
            width: 615px;
            height: 40px;
            background: #fff;
            position: absolute;
            top: 100px;
            left: 180px;
            box-shadow: 0px 0px 20px #000;
        }

        #Main .Search input.txt {
            width: 515px;
            position: relative;
        }

        height:

        40
        px

        ;
        border:

        0
        px

        ;
        float: left

        ;
        text-indent:

        10
        px

        ;
        }

        #Main .Search input.but {
            width: 100px;
            height: 40px;
            background: #690;
            border: 0px;
            float: left;
            color: #fff;
            font-size: 14px;
            font-family: "微软雅黑";
        }

        #Main .Menu {
            width: 110px;
            height: 120px;
            background: #fff;
            box-shadow: 0px 0px 10px #000;
        }

        #Main .Menu ul li {
            list-style-type: none;
            height: 30px;
            font-size: 12px;
            line-height: 30px;
            text-align: Center;
            border-bottom: 1px dotted #ccc;
        }

        #Main .Menu ul li:hover {
            background: #3397e4;
            color: #fff;
        }
    </style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <header class="main-header">
        <!-- Logo -->
        <a href="index.jsp" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>A</b>LT</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>Admin</b>LTE</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- Messages: style can be found in dropdown.less-->
                    <li class="dropdown messages-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                            <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 4 messages</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li><!-- start message -->
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="dist/img/user2-160x160.jpg" class="img-circle"
                                                     alt="User Image">
                                            </div>
                                            <h4>
                                                Support Team
                                                <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li><!-- end message -->
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="dist/img/user3-128x128.jpg" class="img-circle"
                                                     alt="User Image">
                                            </div>
                                            <h4>
                                                AdminLTE Design Team
                                                <small><i class="fa fa-clock-o"></i> 2 hours</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="dist/img/user4-128x128.jpg" class="img-circle"
                                                     alt="User Image">
                                            </div>
                                            <h4>
                                                Developers
                                                <small><i class="fa fa-clock-o"></i> Today</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="dist/img/user3-128x128.jpg" class="img-circle"
                                                     alt="User Image">
                                            </div>
                                            <h4>
                                                Sales Department
                                                <small><i class="fa fa-clock-o"></i> Yesterday</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="dist/img/user4-128x128.jpg" class="img-circle"
                                                     alt="User Image">
                                            </div>
                                            <h4>
                                                Reviewers
                                                <small><i class="fa fa-clock-o"></i> 2 days</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer"><a href="#">See All Messages</a></li>
                        </ul>
                    </li>
                    <!-- Notifications: style can be found in dropdown.less -->
                    <li class="dropdown notifications-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-bell-o"></i>
                            <span class="label label-warning">10</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 10 notifications</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-users text-aqua"></i> 5 new members joined today
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-warning text-yellow"></i> Very long description here that
                                            may not fit into the page and may cause design problems
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-users text-red"></i> 5 new members joined
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-user text-red"></i> You changed your username
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer"><a href="#">View all</a></li>
                        </ul>
                    </li>
                    <!-- Tasks: style can be found in dropdown.less -->
                    <li class="dropdown tasks-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-flag-o"></i>
                            <span class="label label-danger">9</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 9 tasks</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li><!-- Task item -->
                                        <a href="#">
                                            <h3>
                                                Design some buttons
                                                <small class="pull-right">20%</small>
                                            </h3>
                                            <div class="progress xs">
                                                <div class="progress-bar progress-bar-aqua" style="width: 20%"
                                                     role="progressbar" aria-valuenow="20" aria-valuemin="0"
                                                     aria-valuemax="100">
                                                    <span class="sr-only">20% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li><!-- end task item -->
                                    <li><!-- Task item -->
                                        <a href="#">
                                            <h3>
                                                Create a nice theme
                                                <small class="pull-right">40%</small>
                                            </h3>
                                            <div class="progress xs">
                                                <div class="progress-bar progress-bar-green" style="width: 40%"
                                                     role="progressbar" aria-valuenow="20" aria-valuemin="0"
                                                     aria-valuemax="100">
                                                    <span class="sr-only">40% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li><!-- end task item -->
                                    <li><!-- Task item -->
                                        <a href="#">
                                            <h3>
                                                Some task I need to do
                                                <small class="pull-right">60%</small>
                                            </h3>
                                            <div class="progress xs">
                                                <div class="progress-bar progress-bar-red" style="width: 60%"
                                                     role="progressbar" aria-valuenow="20" aria-valuemin="0"
                                                     aria-valuemax="100">
                                                    <span class="sr-only">60% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li><!-- end task item -->
                                    <li><!-- Task item -->
                                        <a href="#">
                                            <h3>
                                                Make beautiful transitions
                                                <small class="pull-right">80%</small>
                                            </h3>
                                            <div class="progress xs">
                                                <div class="progress-bar progress-bar-yellow" style="width: 80%"
                                                     role="progressbar" aria-valuenow="20" aria-valuemin="0"
                                                     aria-valuemax="100">
                                                    <span class="sr-only">80% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li><!-- end task item -->
                                </ul>
                            </li>
                            <li class="footer">
                                <a href="#">View all tasks</a>
                            </li>
                        </ul>
                    </li>
                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">Alexander Pierce</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                <p>
                                    Alexander Pierce - Web Developer
                                    <small>Member since Nov. 2012</small>
                                </p>
                            </li>
                            <!-- Menu Body -->
                            <li class="user-body">
                                <div class="col-xs-4 text-center">
                                    <a href="#">Followers</a>
                                </div>
                                <div class="col-xs-4 text-center">
                                    <a href="#">Sales</a>
                                </div>
                                <div class="col-xs-4 text-center">
                                    <a href="#">Friends</a>
                                </div>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <!-- Control Sidebar Toggle Button -->
                    <li>
                        <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>Alexander Pierce</p>
                    <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                </div>
            </div>
            <!-- search form -->
            <form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                    <input type="text" name="q" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i
                        class="fa fa-search"></i></button>
              </span>
                </div>
            </form>
            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li class="header">MAIN NAVIGATION</li>
                <li class="active treeview">
                    <a href="#">
                        <i class="fa fa-car"></i>
                        <span>车辆监控</span> <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li class="active"><a href="index.jsp">单车监控</a></li>
                        <li><a href="${pageContext.request.contextPath}/jsp/BWCX.jsp">报文查询</a></li>
                        <li><a href="${pageContext.request.contextPath}/jsp/ZXCL.jsp">在线车辆</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-pie-chart"></i>
                        <span>告警管理</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="${pageContext.request.contextPath}/jsp/SSGJ.jsp"><i class="fa fa-circle-o"></i>
                            实时告警</a></li>
                        <li><a href="${pageContext.request.contextPath}/jsp/LSGJ.jsp"><i class="fa fa-circle-o"></i>
                            历史告警</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-laptop"></i>
                        <span>车辆管理</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="${pageContext.request.contextPath}/vehiclemanager/vehiclelist"><i
                                class="fa fa-circle-o"></i>车辆管理</a></li>
                        <li><a href="${pageContext.request.contextPath}/jsp/CXGL.jsp"><i class="fa fa-circle-o"></i>车型管理</a>
                        </li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-edit"></i> <span>统计分析</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="${pageContext.request.contextPath}/jsp/LCTJ.jsp"><i class="fa fa-circle-o"></i>里程统计</a>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/jsp/GZTJ.jsp"><i class="fa fa-circle-o"></i>故障统计</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>
    <!--右撤仪表-->
    <!-- Content Wrapper. Contains page content -->
    <%--<div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          车辆监控
          <small>Control panel</small>
        </h1>
        <ol class="breadcrumb">
          <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
          <li class="active">Dashboard</li>
        </ol>
      </section>

      <!-- Main content -->
      <section class="content">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
              <div class="inner">
                <h3>150</h3>
                <p>New Orders</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div><!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-green">
              <div class="inner">
                <h3>53<sup style="font-size: 20px">%</sup></h3>
                <p>Bounce Rate</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div><!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-yellow">
              <div class="inner">
                <h3>44</h3>
                <p>User Registrations</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div><!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-red">
              <div class="inner">
                <h3>65</h3>
                <p>Unique Visitors</p>
              </div>
              <div class="icon">
                <i class="ion ion-pie-graph"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div><!-- ./col -->
        </div><!-- /.row -->
        <!-- Main row -->
        <div class="row">
          <!-- Left col -->
          <section class="col-lg-7 connectedSortable">
            <!-- Custom tabs (Charts with tabs)-->
            <div class="nav-tabs-custom">
              <!-- Tabs within a box -->
              <ul class="nav nav-tabs pull-right">
                <li class="active"><a href="#revenue-chart" data-toggle="tab">Area</a></li>
                <li><a href="#sales-chart" data-toggle="tab">Donut</a></li>
                <li class="pull-left header"><i class="fa fa-inbox"></i> Sales</li>
              </ul>
              <div class="tab-content no-padding">
                <!-- Morris chart - Sales -->
                <div class="chart tab-pane active" id="revenue-chart" style="position: relative; height: 300px;"></div>
                <div class="chart tab-pane" id="sales-chart" style="position: relative; height: 300px;"></div>
              </div>
            </div><!-- /.nav-tabs-custom -->

            <!-- Chat box -->
            <div class="box box-success">
              <div class="box-header">
                <i class="fa fa-comments-o"></i>
                <h3 class="box-title">Chat</h3>
                <div class="box-tools pull-right" data-toggle="tooltip" title="Status">
                  <div class="btn-group" data-toggle="btn-toggle" >
                    <button type="button" class="btn btn-default btn-sm active"><i class="fa fa-square text-green"></i></button>
                    <button type="button" class="btn btn-default btn-sm"><i class="fa fa-square text-red"></i></button>
                  </div>
                </div>
              </div>
              <div class="box-body chat" id="chat-box">
                <!-- chat item -->
                <div class="item">
                  <img src="dist/img/user4-128x128.jpg" alt="user image" class="online">
                  <p class="message">
                    <a href="#" class="name">
                      <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 2:15</small>
                      Mike Doe
                    </a>
                    I would like to meet you to discuss the latest news about
                    the arrival of the new theme. They say it is going to be one the
                    best themes on the market
                  </p>
                  <div class="attachment">
                    <h4>Attachments:</h4>
                    <p class="filename">
                      Theme-thumbnail-image.jpg
                    </p>
                    <div class="pull-right">
                      <button class="btn btn-primary btn-sm btn-flat">Open</button>
                    </div>
                  </div><!-- /.attachment -->
                </div><!-- /.item -->
                <!-- chat item -->
                <div class="item">
                  <img src="dist/img/user3-128x128.jpg" alt="user image" class="offline">
                  <p class="message">
                    <a href="#" class="name">
                      <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 5:15</small>
                      Alexander Pierce
                    </a>
                    I would like to meet you to discuss the latest news about
                    the arrival of the new theme. They say it is going to be one the
                    best themes on the market
                  </p>
                </div><!-- /.item -->
                <!-- chat item -->
                <div class="item">
                  <img src="dist/img/user2-160x160.jpg" alt="user image" class="offline">
                  <p class="message">
                    <a href="#" class="name">
                      <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 5:30</small>
                      Susan Doe
                    </a>
                    I would like to meet you to discuss the latest news about
                    the arrival of the new theme. They say it is going to be one the
                    best themes on the market
                  </p>
                </div><!-- /.item -->
              </div><!-- /.chat -->
              <div class="box-footer">
                <div class="input-group">
                  <input class="form-control" placeholder="Type message...">
                  <div class="input-group-btn">
                    <button class="btn btn-success"><i class="fa fa-plus"></i></button>
                  </div>
                </div>
              </div>
            </div><!-- /.box (chat box) -->

            <!-- TO DO List -->
            <div class="box box-primary">
              <div class="box-header">
                <i class="ion ion-clipboard"></i>
                <h3 class="box-title">To Do List</h3>
                <div class="box-tools pull-right">
                  <ul class="pagination pagination-sm inline">
                    <li><a href="#">&laquo;</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">&raquo;</a></li>
                  </ul>
                </div>
              </div><!-- /.box-header -->
              <div class="box-body">
                <ul class="todo-list">
                  <li>
                    <!-- drag handle -->
                    <span class="handle">
                      <i class="fa fa-ellipsis-v"></i>
                      <i class="fa fa-ellipsis-v"></i>
                    </span>
                    <!-- checkbox -->
                    <input type="checkbox" value="" name="">
                    <!-- todo text -->
                    <span class="text">Design a nice theme</span>
                    <!-- Emphasis label -->
                    <small class="label label-danger"><i class="fa fa-clock-o"></i> 2 mins</small>
                    <!-- General tools such as edit or delete-->
                    <div class="tools">
                      <i class="fa fa-edit"></i>
                      <i class="fa fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                    <span class="handle">
                      <i class="fa fa-ellipsis-v"></i>
                      <i class="fa fa-ellipsis-v"></i>
                    </span>
                    <input type="checkbox" value="" name="">
                    <span class="text">Make the theme responsive</span>
                    <small class="label label-info"><i class="fa fa-clock-o"></i> 4 hours</small>
                    <div class="tools">
                      <i class="fa fa-edit"></i>
                      <i class="fa fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                    <span class="handle">
                      <i class="fa fa-ellipsis-v"></i>
                      <i class="fa fa-ellipsis-v"></i>
                    </span>
                    <input type="checkbox" value="" name="">
                    <span class="text">Let theme shine like a star</span>
                    <small class="label label-warning"><i class="fa fa-clock-o"></i> 1 day</small>
                    <div class="tools">
                      <i class="fa fa-edit"></i>
                      <i class="fa fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                    <span class="handle">
                      <i class="fa fa-ellipsis-v"></i>
                      <i class="fa fa-ellipsis-v"></i>
                    </span>
                    <input type="checkbox" value="" name="">
                    <span class="text">Let theme shine like a star</span>
                    <small class="label label-success"><i class="fa fa-clock-o"></i> 3 days</small>
                    <div class="tools">
                      <i class="fa fa-edit"></i>
                      <i class="fa fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                    <span class="handle">
                      <i class="fa fa-ellipsis-v"></i>
                      <i class="fa fa-ellipsis-v"></i>
                    </span>
                    <input type="checkbox" value="" name="">
                    <span class="text">Check your messages and notifications</span>
                    <small class="label label-primary"><i class="fa fa-clock-o"></i> 1 week</small>
                    <div class="tools">
                      <i class="fa fa-edit"></i>
                      <i class="fa fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                    <span class="handle">
                      <i class="fa fa-ellipsis-v"></i>
                      <i class="fa fa-ellipsis-v"></i>
                    </span>
                    <input type="checkbox" value="" name="">
                    <span class="text">Let theme shine like a star</span>
                    <small class="label label-default"><i class="fa fa-clock-o"></i> 1 month</small>
                    <div class="tools">
                      <i class="fa fa-edit"></i>
                      <i class="fa fa-trash-o"></i>
                    </div>
                  </li>
                </ul>
              </div><!-- /.box-body -->
              <div class="box-footer clearfix no-border">
                <button class="btn btn-default pull-right"><i class="fa fa-plus"></i> Add item</button>
              </div>
            </div><!-- /.box -->

            <!-- quick email widget -->
            <div class="box box-info">
              <div class="box-header">
                <i class="fa fa-envelope"></i>
                <h3 class="box-title">Quick Email</h3>
                <!-- tools box -->
                <div class="pull-right box-tools">
                  <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                </div><!-- /. tools -->
              </div>
              <div class="box-body">
                <form action="#" method="post">
                  <div class="form-group">
                    <input type="email" class="form-control" name="emailto" placeholder="Email to:">
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control" name="subject" placeholder="Subject">
                  </div>
                  <div>
                    <textarea class="textarea" placeholder="Message" style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                  </div>
                </form>
              </div>
              <div class="box-footer clearfix">
                <button class="pull-right btn btn-default" id="sendEmail">Send <i class="fa fa-arrow-circle-right"></i></button>
              </div>
            </div>

          </section><!-- /.Left col -->
          <!-- right col (We are only adding the ID to make the widgets sortable)-->
          <section class="col-lg-5 connectedSortable">

            <!-- Map box -->
            <div class="box box-solid bg-light-blue-gradient">
              <div class="box-header">
                <!-- tools box -->
                <div class="pull-right box-tools">
                  <button class="btn btn-primary btn-sm daterange pull-right" data-toggle="tooltip" title="Date range"><i class="fa fa-calendar"></i></button>
                  <button class="btn btn-primary btn-sm pull-right" data-widget="collapse" data-toggle="tooltip" title="Collapse" style="margin-right: 5px;"><i class="fa fa-minus"></i></button>
                </div><!-- /. tools -->

                <i class="fa fa-map-marker"></i>
                <h3 class="box-title">
                  Visitors
                </h3>
              </div>
              <div class="box-body">
                <div id="world-map" style="height: 250px; width: 100%;"></div>
              </div><!-- /.box-body-->
              <div class="box-footer no-border">
                <div class="row">
                  <div class="col-xs-4 text-center" style="border-right: 1px solid #f4f4f4">
                    <div id="sparkline-1"></div>
                    <div class="knob-label">Visitors</div>
                  </div><!-- ./col -->
                  <div class="col-xs-4 text-center" style="border-right: 1px solid #f4f4f4">
                    <div id="sparkline-2"></div>
                    <div class="knob-label">Online</div>
                  </div><!-- ./col -->
                  <div class="col-xs-4 text-center">
                    <div id="sparkline-3"></div>
                    <div class="knob-label">Exists</div>
                  </div><!-- ./col -->
                </div><!-- /.row -->
              </div>
            </div>
            <!-- /.box -->

            <!-- solid sales graph -->
            <div class="box box-solid bg-teal-gradient">
              <div class="box-header">
                <i class="fa fa-th"></i>
                <h3 class="box-title">Sales Graph</h3>
                <div class="box-tools pull-right">
                  <button class="btn bg-teal btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                  <button class="btn bg-teal btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                </div>
              </div>
              <div class="box-body border-radius-none">
                <div class="chart" id="line-chart" style="height: 250px;"></div>
              </div><!-- /.box-body -->
              <div class="box-footer no-border">
                <div class="row">
                  <div class="col-xs-4 text-center" style="border-right: 1px solid #f4f4f4">
                    <input type="text" class="knob" data-readonly="true" value="20" data-width="60" data-height="60" data-fgColor="#39CCCC">
                    <div class="knob-label">Mail-Orders</div>
                  </div><!-- ./col -->
                  <div class="col-xs-4 text-center" style="border-right: 1px solid #f4f4f4">
                    <input type="text" class="knob" data-readonly="true" value="50" data-width="60" data-height="60" data-fgColor="#39CCCC">
                    <div class="knob-label">Online</div>
                  </div><!-- ./col -->
                  <div class="col-xs-4 text-center">
                    <input type="text" class="knob" data-readonly="true" value="30" data-width="60" data-height="60" data-fgColor="#39CCCC">
                    <div class="knob-label">In-Store</div>
                  </div><!-- ./col -->
                </div><!-- /.row -->
              </div><!-- /.box-footer -->
            </div><!-- /.box -->

            <!-- Calendar -->
            <div class="box box-solid bg-green-gradient">
              <div class="box-header">
                <i class="fa fa-calendar"></i>
                <h3 class="box-title">Calendar</h3>
                <!-- tools box -->
                <div class="pull-right box-tools">
                  <!-- button with a dropdown -->
                  <div class="btn-group">
                    <button class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i></button>
                    <ul class="dropdown-menu pull-right" role="menu">
                      <li><a href="#">Add new event</a></li>
                      <li><a href="#">Clear events</a></li>
                      <li class="divider"></li>
                      <li><a href="#">View calendar</a></li>
                    </ul>
                  </div>
                  <button class="btn btn-success btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                  <button class="btn btn-success btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                </div><!-- /. tools -->
              </div><!-- /.box-header -->
              <div class="box-body no-padding">
                <!--The calendar -->
                <div id="calendar" style="width: 100%"></div>
              </div><!-- /.box-body -->
              <div class="box-footer text-black">
                <div class="row">
                  <div class="col-sm-6">
                    <!-- Progress bars -->
                    <div class="clearfix">
                      <span class="pull-left">Task #1</span>
                      <small class="pull-right">90%</small>
                    </div>
                    <div class="progress xs">
                      <div class="progress-bar progress-bar-green" style="width: 90%;"></div>
                    </div>

                    <div class="clearfix">
                      <span class="pull-left">Task #2</span>
                      <small class="pull-right">70%</small>
                    </div>
                    <div class="progress xs">
                      <div class="progress-bar progress-bar-green" style="width: 70%;"></div>
                    </div>
                  </div><!-- /.col -->
                  <div class="col-sm-6">
                    <div class="clearfix">
                      <span class="pull-left">Task #3</span>
                      <small class="pull-right">60%</small>
                    </div>
                    <div class="progress xs">
                      <div class="progress-bar progress-bar-green" style="width: 60%;"></div>
                    </div>

                    <div class="clearfix">
                      <span class="pull-left">Task #4</span>
                      <small class="pull-right">40%</small>
                    </div>
                    <div class="progress xs">
                      <div class="progress-bar progress-bar-green" style="width: 40%;"></div>
                    </div>
                  </div><!-- /.col -->
                </div><!-- /.row -->
              </div>
            </div><!-- /.box -->

          </section><!-- right col -->
        </div><!-- /.row (main row) -->

      </section><!-- /.content -->
    </div><!-- /.content-wrapper -->--%>
    <script charset="utf-8">
        function searchVehicleByVin() {
            alert($("#search").val());
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/vehicleControl/getVehicleByVin",
                data: {
                    Vin: $("#search").val()
                },
                success: function (data) {
                    alert(data);
                    if (isEmptyObject(data)) {
                        alert("无此车辆");
                    } else {
                        //   alert(data);
                        $("#data").html(data);
                    }

                }, error: function (ex) {
                    alert("无此车辆");
                    // alert("系统异常,请稍后再试!!!");
                }

            });
        }

        function isEmptyObject(obj) {
            for (var key in obj) {
                return false;//返回false，不为空对象
            }
            return true;//返回true，为空对象
        }

    </script>
    <div class="content-wrapper">
        <div id="main3">
            <input type="search" id="search">
            <input type="button" value="用VIN搜索主题车辆" onclick="searchVehicleByVin()">
        </div>
        <!--地图开始-->
        <div id="Map" style="width: 300px;height:350px;float: left"></div>
        <!--地图结束-->
        <script type="text/javascript"
                src="http://webapi.amap.com/maps?v=1.3&key=b245ae8390f2ecdc0e5706241c28fc7b"></script>
        <script type="text/javascript">
            var map, toolBar, mouseTool, contextMenu;
            //初始化地图对象，加载地图
            map = new AMap.Map("Map", {
                resizeEnable: true
            });

            //设置城市
            document.getElementById('query').onclick = function () {
                var cityName = document.getElementById('cityName').value;
                if (!cityName) {
                    cityName = '北京市';
                }
                map.setCity(cityName);
            };


            //地图中添加地图操作ToolBar插件、鼠标工具MouseTool插件
            map.plugin(["AMap.ToolBar", "AMap.MouseTool"], function () {
                toolBar = new AMap.ToolBar();
                map.addControl(toolBar);
                mouseTool = new AMap.MouseTool(map);
            });

            //自定义右键菜单内容
            var menuContent = document.createElement("div");
            menuContent.innerHTML = "<div class='Menu'>" +
                "<ul>" +
                "<li class='hover' onclick='zoomMenu(0)'>缩小</li>" +
                "<li onclick='zoomMenu(1)'>放大</li>" +
                "<li onclick='distanceMeasureMenu()'>测量距离</li>" +
                "<li onclick='addMarkerMenu()'>添加标记</li>"
                + "<ul>"
                + "</div>"
            //创建右键菜单
            contextMenu = new AMap.ContextMenu({isCustom: true, content: menuContent});//通过content自定义右键菜单内容

            //地图绑定鼠标右击事件——弹出右键菜单
            AMap.event.addListener(map, 'rightclick', function (e) {
                contextMenu.open(map, e.lnglat);
                contextMenuPositon = e.lnglat; //右键菜单位置
            });
            contextMenu.close();
            //右键菜单缩放地图
            function zoomMenu(tag) {
                if (tag === 0) {
                    map.zoomOut();
                }
                if (tag === 1) {
                    map.zoomIn();
                }
                contextMenu.close();
            }

            //右键菜单距离量测
            function distanceMeasureMenu() {
                mouseTool.rule();
                contextMenu.close();
            }

            //右键菜单添加Marker标记
            function addMarkerMenu() {
                mouseTool.close();
                var marker = new AMap.Marker({
                    map: map,
                    position: contextMenuPositon, //基点位置
                    icon: "http://webapi.amap.com/images/marker_sprite.png", //marker图标，直接传递地址url
                    offset: {x: -1, y: -20} //相对于基点的位置
                });
                contextMenu.close();
            }
        </script>
        <div style="height:400px;">
            <div id="main1" style="height:300px;width: 200px;float: left"></div>
            <div id="main2" style="height:300px;;width: 200px;float: left"></div>

        </div>
        <script type="text/javascript">
            // 基于准备好的dom，初始化echarts图表
            var myChart = echarts.init(document.getElementById('main1'));

            var option = {
                tooltip: {
                    formatter: "{a} <br/>{b} : {c}%"
                },
                toolbox: {
                    show: false,
                    feature: {
                        mark: {show: false},
                        restore: {show: false},
                        saveAsImage: {show: false}
                    }
                },
                series: [
                    {
                        name: '',
                        type: 'gauge',
                        min: 0,
                        max: 200,
                        splitNumber: 10,       // 分割段数，默认为5
                        axisLine: {            // 坐标轴线
                            lineStyle: {       // 属性lineStyle控制线条样式
                                color: [[0.2, '#228b22'], [0.8, '#48b'], [1, '#ff4500']],
                                width: 8
                            }
                        },
                        axisTick: {            // 坐标轴小标记
                            splitNumber: 10,   // 每份split细分多少段
                            length: 12,        // 属性length控制线长
                            lineStyle: {       // 属性lineStyle控制线条样式
                                color: 'auto'
                            }
                        },
                        axisLabel: {           // 坐标轴文本标签，详见axis.axisLabel
                            textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                                color: 'auto'
                            }
                        },
                        splitLine: {           // 分隔线
                            show: true,        // 默认显示，属性show控制显示与否
                            length: 30,         // 属性length控制线长
                            lineStyle: {       // 属性lineStyle（详见lineStyle）控制线条样式
                                color: 'auto'
                            }
                        },
                        pointer: {
                            width: 5
                        },
                        title: {
                            show: true,
                            offsetCenter: [0, '-40%'],       // x, y，单位px
                            textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                                fontWeight: 'bolder'
                            }
                        },
                        detail: {
                            formatter: '{value}%',
                            textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                                color: 'auto',
                                fontWeight: 'bolder'
                            }
                        },
                        data: [{value: 50, name: ''}]
                    }
                ]
            };

            // 为echarts对象加载数据
            myChart.setOption(option);

            setInterval(function () {
                option.series[0].data[0].value = (Math.random() * 100).toFixed(2) - 0;
                myChart.setOption(option, true);
            }, 2000);
        </script>
        <script type="text/javascript">
            // 基于准备好的dom，初始化echarts图表
            var myChart = echarts.init(document.getElementById('main2'));

            var option = {
                tooltip: {
                    formatter: "{a} <br/>{b} : {c}%"
                },
                toolbox: {
                    show: false,
                    feature: {
                        mark: {show: false},
                        restore: {show: false},
                        saveAsImage: {show: false}
                    }
                },
                series: [
                    {
                        name: '',
                        type: 'gauge',
                        min: 0,
                        max: 200,
                        splitNumber: 10,       // 分割段数，默认为5
                        axisLine: {            // 坐标轴线
                            lineStyle: {       // 属性lineStyle控制线条样式
                                color: [[0.2, '#228b22'], [0.8, '#48b'], [1, '#ff4500']],
                                width: 8
                            }
                        },
                        axisTick: {            // 坐标轴小标记
                            splitNumber: 10,   // 每份split细分多少段
                            length: 12,        // 属性length控制线长
                            lineStyle: {       // 属性lineStyle控制线条样式
                                color: 'auto'
                            }
                        },
                        axisLabel: {           // 坐标轴文本标签，详见axis.axisLabel
                            textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                                color: 'auto'
                            }
                        },
                        splitLine: {           // 分隔线
                            show: true,        // 默认显示，属性show控制显示与否
                            length: 30,         // 属性length控制线长
                            lineStyle: {       // 属性lineStyle（详见lineStyle）控制线条样式
                                color: 'auto'
                            }
                        },
                        pointer: {
                            width: 5
                        },
                        title: {
                            show: true,
                            offsetCenter: [0, '-40%'],       // x, y，单位px
                            textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                                fontWeight: 'bolder'
                            }
                        },
                        detail: {
                            formatter: '{value}%',
                            textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                                color: 'auto',
                                fontWeight: 'bolder'
                            }
                        },
                        data: [{value: 50, name: ''}]
                    }
                ]
            };

            // 为echarts对象加载数据
            myChart.setOption(option);

            setInterval(function () {
                option.series[0].data[0].value = (Math.random() * 100).toFixed(2) - 0;
                myChart.setOption(option, true);
            }, 2000);
        </script>
        <div style="width:70%;margin: 0px;">
            <div class="jyTable" style="width:1200px;height:260px;">
                <div style="width: 100%;">
                    <ul class="title title1 left">
                        <li class='cur'>驱动电机数据</li>
                        <li>整车数据</li>
                        <li>发动电机数据</li>
                        <li>燃料电池数据</li>
                        <li>报警数据</li>
                        <li>定位数据</li>
                        <li>极值数据</li>
                        <li>车辆登入/登出</li>
                        <li>车辆信息</li>
                    </ul>
                </div>
                <div class='zong'>
                    <div class="list list1">

                        <div class="tabCon">
                            <div id="s1">
                                <table class="table table-bordered table-hover">
                                   <%-- <tr>
                                        <th class="text-center" style="width: 25%">报文日期</th>
                                        <th class="text-center" style="width: 25%">2018年1月12日11:03:08</th>
                                        <th class="text-center" style="width: 25%">数据有效性</th>
                                        <th class="text-center" style="width: 25%">有效</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机个数</th>
                                        <th class="text-center" style="width: 25%">1</th>
                                        <th class="text-center" style="width: 25%">-</th>
                                        <th class="text-center" style="width: 25%">--</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">电机转速</th>
                                        <th class="text-center" style="width: 25%">0 r/min</th>
                                        <th class="text-center" style="width: 25%">电机温度</th>
                                        <th class="text-center" style="width: 25%">62℃</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">电机电压</th>
                                        <th class="text-center" style="width: 25%">1.8 V</th>
                                        <th class="text-center" style="width: 25%">电机母线电流</th>
                                        <th class="text-center" style="width: 25%">0.0 A</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机控制器温度</th>
                                        <th class="text-center" style="width: 25%">19 ℃</th>
                                        <th class="text-center" style="width: 25%">驱动电机序号</th>
                                        <th class="text-center" style="width: 25%">1</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机状态</th>
                                        <th class="text-center" style="width: 25%">关闭状态</th>
                                        <th class="text-center" style="width: 25%">驱动电机转矩</th>
                                        <th class="text-center" style="width: 25%">1.0 N·m</th>
                                    </tr>--%>
                                </table>
                            </div>
                        </div>

                        <div class="tabCon">
                            <div id="s2">
                                <table class="table table-bordered table-hover">
                                    <%--<tr>
                                        <th class="text-center" style="width: 25%">报文日期</th>
                                        <th class="text-center" style="width: 25%">2018年1月12日11:03:08</th>
                                        <th class="text-center" style="width: 25%">数据有效性</th>
                                        <th class="text-center" style="width: 25%">有效</th>
                                    </tr>--%>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机个数</th>
                                        <th class="text-center" style="width: 25%">1</th>
                                        <th class="text-center" style="width: 25%">-</th>
                                        <th class="text-center" style="width: 25%">--</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">电机转速</th>
                                        <th class="text-center" style="width: 25%">0 r/min</th>
                                        <th class="text-center" style="width: 25%">电机温度</th>
                                        <th class="text-center" style="width: 25%">62℃</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">电机电压</th>
                                        <th class="text-center" style="width: 25%">1.8 V</th>
                                        <th class="text-center" style="width: 25%">电机母线电流</th>
                                        <th class="text-center" style="width: 25%">0.0 A</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机控制器温度</th>
                                        <th class="text-center" style="width: 25%">19 ℃</th>
                                        <th class="text-center" style="width: 25%">驱动电机序号</th>
                                        <th class="text-center" style="width: 25%">1</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机状态</th>
                                        <th class="text-center" style="width: 25%">关闭状态</th>
                                        <th class="text-center" style="width: 25%">驱动电机转矩</th>
                                        <th class="text-center" style="width: 25%">1.0 N·m</th>
                                    </tr>
                                </table>
                            </div>
                        </div>

                        <div class="tabCon">
                            <div id="s3">
                                <table class="table table-bordered table-hover">
                                    <%--<tr>
                                        <th class="text-center" style="width: 25%">报文日期</th>
                                        <th class="text-center" style="width: 25%">2018年1月12日11:03:08</th>
                                        <th class="text-center" style="width: 25%">数据有效性</th>
                                        <th class="text-center" style="width: 25%">有效</th>
                                    </tr>--%>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机个数</th>
                                        <th class="text-center" style="width: 25%">1</th>
                                        <th class="text-center" style="width: 25%">-</th>
                                        <th class="text-center" style="width: 25%">--</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">电机转速</th>
                                        <th class="text-center" style="width: 25%">0 r/min</th>
                                        <th class="text-center" style="width: 25%">电机温度</th>
                                        <th class="text-center" style="width: 25%">62℃</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">电机电压</th>
                                        <th class="text-center" style="width: 25%">1.8 V</th>
                                        <th class="text-center" style="width: 25%">电机母线电流</th>
                                        <th class="text-center" style="width: 25%">0.0 A</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机控制器温度</th>
                                        <th class="text-center" style="width: 25%">19 ℃</th>
                                        <th class="text-center" style="width: 25%">驱动电机序号</th>
                                        <th class="text-center" style="width: 25%">1</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机状态</th>
                                        <th class="text-center" style="width: 25%">关闭状态</th>
                                        <th class="text-center" style="width: 25%">驱动电机转矩</th>
                                        <th class="text-center" style="width: 25%">1.0 N·m</th>
                                    </tr>
                                </table>
                            </div>
                        </div>

                        <div class="tabCon">
                            <div id="s4">
                                <table class="table table-bordered table-hover">
                                    <tr>
                                        <th class="text-center" style="width: 25%">报文日期</th>
                                        <th class="text-center" style="width: 25%">2018年1月12日11:03:08</th>
                                        <th class="text-center" style="width: 25%">数据有效性</th>
                                        <th class="text-center" style="width: 25%">有效</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机个数</th>
                                        <th class="text-center" style="width: 25%">1</th>
                                        <th class="text-center" style="width: 25%">-</th>
                                        <th class="text-center" style="width: 25%">--</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">电机转速</th>
                                        <th class="text-center" style="width: 25%">0 r/min</th>
                                        <th class="text-center" style="width: 25%">电机温度</th>
                                        <th class="text-center" style="width: 25%">62℃</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">电机电压</th>
                                        <th class="text-center" style="width: 25%">1.8 V</th>
                                        <th class="text-center" style="width: 25%">电机母线电流</th>
                                        <th class="text-center" style="width: 25%">0.0 A</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机控制器温度</th>
                                        <th class="text-center" style="width: 25%">19 ℃</th>
                                        <th class="text-center" style="width: 25%">驱动电机序号</th>
                                        <th class="text-center" style="width: 25%">1</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机状态</th>
                                        <th class="text-center" style="width: 25%">关闭状态</th>
                                        <th class="text-center" style="width: 25%">驱动电机转矩</th>
                                        <th class="text-center" style="width: 25%">1.0 N·m</th>
                                    </tr>
                                </table>
                            </div>
                        </div>

                        <div class="tabCon">
                            <div id="s5">
                                <table class="table table-bordered table-hover">
                                    <tr>
                                        <th class="text-center" style="width: 25%">报文日期</th>
                                        <th class="text-center" style="width: 25%">2018年1月12日11:03:08</th>
                                        <th class="text-center" style="width: 25%">数据有效性</th>
                                        <th class="text-center" style="width: 25%">有效</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机个数</th>
                                        <th class="text-center" style="width: 25%">1</th>
                                        <th class="text-center" style="width: 25%">-</th>
                                        <th class="text-center" style="width: 25%">--</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">电机转速</th>
                                        <th class="text-center" style="width: 25%">0 r/min</th>
                                        <th class="text-center" style="width: 25%">电机温度</th>
                                        <th class="text-center" style="width: 25%">62℃</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">电机电压</th>
                                        <th class="text-center" style="width: 25%">1.8 V</th>
                                        <th class="text-center" style="width: 25%">电机母线电流</th>
                                        <th class="text-center" style="width: 25%">0.0 A</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机控制器温度</th>
                                        <th class="text-center" style="width: 25%">19 ℃</th>
                                        <th class="text-center" style="width: 25%">驱动电机序号</th>
                                        <th class="text-center" style="width: 25%">1</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机状态</th>
                                        <th class="text-center" style="width: 25%">关闭状态</th>
                                        <th class="text-center" style="width: 25%">驱动电机转矩</th>
                                        <th class="text-center" style="width: 25%">1.0 N·m</th>
                                    </tr>
                                </table>
                            </div>
                        </div>

                        <div class="tabCon">
                            <div id="s6">
                                <table class="table table-bordered table-hover">
                                    <tr>
                                        <th class="text-center" style="width: 25%">报文日期</th>
                                        <th class="text-center" style="width: 25%">2018年1月12日11:03:08</th>
                                        <th class="text-center" style="width: 25%">数据有效性</th>
                                        <th class="text-center" style="width: 25%">有效</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机个数</th>
                                        <th class="text-center" style="width: 25%">1</th>
                                        <th class="text-center" style="width: 25%">-</th>
                                        <th class="text-center" style="width: 25%">--</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">电机转速</th>
                                        <th class="text-center" style="width: 25%">0 r/min</th>
                                        <th class="text-center" style="width: 25%">电机温度</th>
                                        <th class="text-center" style="width: 25%">62℃</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">电机电压</th>
                                        <th class="text-center" style="width: 25%">1.8 V</th>
                                        <th class="text-center" style="width: 25%">电机母线电流</th>
                                        <th class="text-center" style="width: 25%">0.0 A</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机控制器温度</th>
                                        <th class="text-center" style="width: 25%">19 ℃</th>
                                        <th class="text-center" style="width: 25%">驱动电机序号</th>
                                        <th class="text-center" style="width: 25%">1</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机状态</th>
                                        <th class="text-center" style="width: 25%">关闭状态</th>
                                        <th class="text-center" style="width: 25%">驱动电机转矩</th>
                                        <th class="text-center" style="width: 25%">1.0 N·m</th>
                                    </tr>
                                </table>
                            </div>
                        </div>

                        <div class="tabCon">
                            <div id="s7">
                                <table class="table table-bordered table-hover">
                                    <tr>
                                        <th class="text-center" style="width: 25%">报文日期</th>
                                        <th class="text-center" style="width: 25%">2018年1月12日11:03:08</th>
                                        <th class="text-center" style="width: 25%">数据有效性</th>
                                        <th class="text-center" style="width: 25%">有效</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机个数</th>
                                        <th class="text-center" style="width: 25%">1</th>
                                        <th class="text-center" style="width: 25%">-</th>
                                        <th class="text-center" style="width: 25%">--</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">电机转速</th>
                                        <th class="text-center" style="width: 25%">0 r/min</th>
                                        <th class="text-center" style="width: 25%">电机温度</th>
                                        <th class="text-center" style="width: 25%">62℃</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">电机电压</th>
                                        <th class="text-center" style="width: 25%">1.8 V</th>
                                        <th class="text-center" style="width: 25%">电机母线电流</th>
                                        <th class="text-center" style="width: 25%">0.0 A</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机控制器温度</th>
                                        <th class="text-center" style="width: 25%">19 ℃</th>
                                        <th class="text-center" style="width: 25%">驱动电机序号</th>
                                        <th class="text-center" style="width: 25%">1</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机状态</th>
                                        <th class="text-center" style="width: 25%">关闭状态</th>
                                        <th class="text-center" style="width: 25%">驱动电机转矩</th>
                                        <th class="text-center" style="width: 25%">1.0 N·m</th>
                                    </tr>
                                </table>
                            </div>
                        </div>

                        <div class="tabCon">
                            <div id="s8">
                                <table class="table table-bordered table-hover">
                                    <tr>
                                        <th class="text-center" style="width: 25%">报文日期</th>
                                        <th class="text-center" style="width: 25%">2018年1月12日11:03:08</th>
                                        <th class="text-center" style="width: 25%">数据有效性</th>
                                        <th class="text-center" style="width: 25%">有效</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机个数</th>
                                        <th class="text-center" style="width: 25%">1</th>
                                        <th class="text-center" style="width: 25%">-</th>
                                        <th class="text-center" style="width: 25%">--</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">电机转速</th>
                                        <th class="text-center" style="width: 25%">0 r/min</th>
                                        <th class="text-center" style="width: 25%">电机温度</th>
                                        <th class="text-center" style="width: 25%">62℃</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">电机电压</th>
                                        <th class="text-center" style="width: 25%">1.8 V</th>
                                        <th class="text-center" style="width: 25%">电机母线电流</th>
                                        <th class="text-center" style="width: 25%">0.0 A</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机控制器温度</th>
                                        <th class="text-center" style="width: 25%">19 ℃</th>
                                        <th class="text-center" style="width: 25%">驱动电机序号</th>
                                        <th class="text-center" style="width: 25%">1</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机状态</th>
                                        <th class="text-center" style="width: 25%">关闭状态</th>
                                        <th class="text-center" style="width: 25%">驱动电机转矩</th>
                                        <th class="text-center" style="width: 25%">1.0 N·m</th>
                                    </tr>
                                </table>
                            </div>
                        </div>

                        <div class="tabCon">
                            <div id="s9">
                                <table class="table table-bordered table-hover">
                                    <tr>
                                        <th class="text-center" style="width: 25%">报文日期</th>
                                        <th class="text-center" style="width: 25%">2018年1月12日11:03:08</th>
                                        <th class="text-center" style="width: 25%">数据有效性</th>
                                        <th class="text-center" style="width: 25%">有效</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机个数</th>
                                        <th class="text-center" style="width: 25%">1</th>
                                        <th class="text-center" style="width: 25%">-</th>
                                        <th class="text-center" style="width: 25%">--</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">电机转速</th>
                                        <th class="text-center" style="width: 25%">0 r/min</th>
                                        <th class="text-center" style="width: 25%">电机温度</th>
                                        <th class="text-center" style="width: 25%">62℃</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">电机电压</th>
                                        <th class="text-center" style="width: 25%">1.8 V</th>
                                        <th class="text-center" style="width: 25%">电机母线电流</th>
                                        <th class="text-center" style="width: 25%">0.0 A</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机控制器温度</th>
                                        <th class="text-center" style="width: 25%">19 ℃</th>
                                        <th class="text-center" style="width: 25%">驱动电机序号</th>
                                        <th class="text-center" style="width: 25%">1</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 25%">驱动电机状态</th>
                                        <th class="text-center" style="width: 25%">关闭状态</th>
                                        <th class="text-center" style="width: 25%">驱动电机转矩</th>
                                        <th class="text-center" style="width: 25%">1.0 N·m</th>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>


    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 2.3.0
        </div>
        <strong>Copyright &copy; 2014-2015 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights
        reserved.
    </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
            <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- Home tab content -->
            <div class="tab-pane" id="control-sidebar-home-tab">
                <h3 class="control-sidebar-heading">Recent Activity</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:;">
                            <i class="menu-icon fa fa-birthday-cake bg-red"></i>
                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>
                                <p>Will be 23 on April 24th</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="menu-icon fa fa-user bg-yellow"></i>
                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>
                                <p>New phone +1(800)555-1234</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>
                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>
                                <p>nora@example.com</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="menu-icon fa fa-file-code-o bg-green"></i>
                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>
                                <p>Execution time 5 seconds</p>
                            </div>
                        </a>
                    </li>
                </ul><!-- /.control-sidebar-menu -->

                <h3 class="control-sidebar-heading">Tasks Progress</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:;">
                            <h4 class="control-sidebar-subheading">
                                Custom Template Design
                                <span class="label label-danger pull-right">70%</span>
                            </h4>
                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <h4 class="control-sidebar-subheading">
                                Update Resume
                                <span class="label label-success pull-right">95%</span>
                            </h4>
                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <h4 class="control-sidebar-subheading">
                                Laravel Integration
                                <span class="label label-warning pull-right">50%</span>
                            </h4>
                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <h4 class="control-sidebar-subheading">
                                Back End Framework
                                <span class="label label-primary pull-right">68%</span>
                            </h4>
                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
                            </div>
                        </a>
                    </li>
                </ul><!-- /.control-sidebar-menu -->

            </div><!-- /.tab-pane -->
            <!-- Stats tab content -->
            <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div><!-- /.tab-pane -->
            <!-- Settings tab content -->
            <div class="tab-pane" id="control-sidebar-settings-tab">
                <form method="post">
                    <h3 class="control-sidebar-heading">General Settings</h3>
                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Report panel usage
                            <input type="checkbox" class="pull-right" checked>
                        </label>
                        <p>
                            Some information about this general settings option
                        </p>
                    </div><!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Allow mail redirect
                            <input type="checkbox" class="pull-right" checked>
                        </label>
                        <p>
                            Other sets of options are available
                        </p>
                    </div><!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Expose author name in posts
                            <input type="checkbox" class="pull-right" checked>
                        </label>
                        <p>
                            Allow the user to show his name in blog posts
                        </p>
                    </div><!-- /.form-group -->

                    <h3 class="control-sidebar-heading">Chat Settings</h3>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Show me as online
                            <input type="checkbox" class="pull-right" checked>
                        </label>
                    </div><!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Turn off notifications
                            <input type="checkbox" class="pull-right">
                        </label>
                    </div><!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Delete chat history
                            <a href="javascript:;" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
                        </label>
                    </div><!-- /.form-group -->
                </form>
            </div><!-- /.tab-pane -->
        </div>
    </aside><!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div><!-- ./wrapper -->

<!-- jQuery 2.1.4 -->
<script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.5 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="plugins/morris/morris.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/knob/jquery.knob.js"></script>
<!-- daterangepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
</body>


</html>
