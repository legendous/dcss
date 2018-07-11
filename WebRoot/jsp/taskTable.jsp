<%@ page language="java" session="false"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
  <head>
    <title>DCSS 1.0 - TaskTable</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

    <!-- Bootstrap -->
    <link href="<%=basePath%>/assets/css/vendor/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath%>/Font-Awesome/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=basePath%>/assets/css/vendor/animate/animate.css">
    <link type="text/css" rel="stylesheet" media="all" href="<%=basePath%>/assets/js/vendor/mmenu/css/jquery.mmenu.all.css" />
    <link rel="stylesheet" href="<%=basePath%>/assets/js/vendor/videobackground/css/jquery.videobackground.css">
    <link rel="stylesheet" href="<%=basePath%>/assets/css/vendor/bootstrap-checkbox.css">
	<link rel="stylesheet" href="<%=basePath%>/assets/js/vendor/chosen/css/chosen.min.css">
    <link rel="stylesheet" href="<%=basePath%>/assets/js/vendor/chosen/css/chosen-bootstrap.css">
	<link href="<%=basePath%>/assets/css/minimal.css" rel="stylesheet">
	<link href="<%=basePath%>/MyAssets/css/main.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

  </head>
  <body class="bg-7">


 

    <!-- Preloader -->
    <div class="mask"><div id="loader"></div></div>
    <!--/Preloader -->

    <!-- Wrap all page content here -->
    <div id="wrap">
    
      <!-- Make page fluid -->
      <div class="row">
        
        <!-- Fixed navbar -->
        <div class="navbar navbar-default navbar-fixed-top navbar-transparent-black mm-fixed-top" role="navigation" id="navbar">
          


          <!-- Branding -->
          <div class="navbar-header col-md-2">
            <a class="navbar-brand" href="index.html">
              <strong>汉口银行</strong> DCSS
            </a>
            <div class="sidebar-collapse">
              <a href="#">
                <i class="fa fa-bars"></i>
              </a>
            </div>
          </div>
          <!-- Branding end -->


          <!-- .nav-collapse -->
          <div class="navbar-collapse">
                        
            <!-- Page refresh -->
            <ul class="nav navbar-nav refresh">
              <li class="divided">
                <a href="#" class="page-refresh"><i class="fa fa-refresh"></i></a>
              </li>
            </ul>
            <!-- /Page refresh -->

            <!-- Search -->
            <div class="search" id="main-search">
              <i class="fa fa-search"></i> <input type="text" placeholder="Search...">
            </div>
            <!-- Search end -->

            <!-- Quick Actions -->
            <ul class="nav navbar-nav quick-actions">
              
              <li class="dropdown divided">
                
                <a class="dropdown-toggle button" data-toggle="dropdown" href="#">
                  <i class="fa fa-tasks"></i>
                  <span class="label label-transparent-black">2</span>
                </a>

                <ul class="dropdown-menu wide arrow nopadding bordered">
                  <li><h1>You have <strong>2</strong> new tasks</h1></li>
                  <li>
                    <a href="#">
                      <div class="task-info">
                        <div class="desc">Layout</div>
                        <div class="percent">80%</div>
                      </div>
                      <div class="progress progress-striped progress-thin">
                        <div class="progress-bar progress-bar-green" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                          <span class="sr-only">40% Complete (success)</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="task-info">
                        <div class="desc">Schemes</div>
                        <div class="percent">15%</div>
                      </div>
                      <div class="progress progress-striped active progress-thin">
                        <div class="progress-bar progress-bar-cyan" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 15%">
                          <span class="sr-only">45% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="task-info">
                        <div class="desc">Forms</div>
                        <div class="percent">5%</div>
                      </div>
                      <div class="progress progress-striped progress-thin">
                        <div class="progress-bar progress-bar-orange" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 5%">
                          <span class="sr-only">5% Complete (warning)</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="task-info">
                        <div class="desc">JavaScript</div>
                        <div class="percent">30%</div>
                      </div>
                      <div class="progress progress-striped progress-thin">
                        <div class="progress-bar progress-bar-red" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                          <span class="sr-only">30% Complete (danger)</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="task-info">
                        <div class="desc">Dropdowns</div>
                        <div class="percent">60%</div>
                      </div>
                      <div class="progress progress-striped progress-thin">
                        <div class="progress-bar progress-bar-amethyst" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                          <span class="sr-only">60% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li><a href="#">Check all tasks <i class="fa fa-angle-right"></i></a></li>
                </ul>

              </li>

              <li class="dropdown divided">
                
                <a class="dropdown-toggle button" data-toggle="dropdown" href="#">
                  <i class="fa fa-envelope"></i>
                  <span class="label label-transparent-black">1</span>
                </a>

                <ul class="dropdown-menu wider arrow nopadding messages">
                  <li><h1>You have <strong>1</strong> new message</h1></li>
                  <li>
                    <a class="cyan" href="#">
                      <div class="profile-photo">
                        <img src="assets/images/ici-avatar.jpg" alt />
                      </div>
                      <div class="message-info">
                        <span class="sender">Ing. Imrich Kamarel</span>
                        <span class="time">12 mins</span>
                        <div class="message-content">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum</div>
                      </div>
                    </a>
                  </li>

                  <li>
                    <a class="green" href="#">
                      <div class="profile-photo">
                        <img src="assets/images/arnold-avatar.jpg" alt />
                      </div>
                      <div class="message-info">
                        <span class="sender">Arnold Karlsberg</span>
                        <span class="time">1 hour</span>
                        <div class="message-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit</div>
                      </div>
                    </a>
                  </li>

                  <li>
                    <a href="#">
                      <div class="profile-photo">
                        <img src="assets/images/profile-photo.jpg" alt />
                      </div>
                      <div class="message-info">
                        <span class="sender">John Douey</span>
                        <span class="time">3 hours</span>
                        <div class="message-content">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia</div>
                      </div>
                    </a>
                  </li>

                  <li>
                    <a class="red" href="#">
                      <div class="profile-photo">
                        <img src="assets/images/peter-avatar.jpg" alt />
                      </div>
                      <div class="message-info">
                        <span class="sender">Peter Kay</span>
                        <span class="time">5 hours</span>
                        <div class="message-content">Ut enim ad minim veniam, quis nostrud exercitation</div>
                      </div>
                    </a>
                  </li>

                  <li>
                    <a class="orange" href="#">
                      <div class="profile-photo">
                        <img src="assets/images/george-avatar.jpg" alt />
                      </div>
                      <div class="message-info">
                        <span class="sender">George McCain</span>
                        <span class="time">6 hours</span>
                        <div class="message-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit</div>
                      </div>
                    </a>
                  </li>


                  <li class="topborder"><a href="#">Check all messages <i class="fa fa-angle-right"></i></a></li>
                </ul>

              </li>

              <li class="dropdown divided">
                
                <a class="dropdown-toggle button" data-toggle="dropdown" href="#">
                  <i class="fa fa-bell"></i>
                  <span class="label label-transparent-black">3</span>
                </a>

                <ul class="dropdown-menu wide arrow nopadding bordered">
                  <li><h1>You have <strong>3</strong> new notifications</h1></li>
                  
                  <li>
                    <a href="#">
                      <span class="label label-green"><i class="fa fa-user"></i></span>
                      New user registered.
                      <span class="small">18 mins</span>
                    </a>
                  </li>

                  <li>
                    <a href="#">
                      <span class="label label-red"><i class="fa fa-power-off"></i></span>
                      Server down.
                      <span class="small">27 mins</span>
                    </a>
                  </li>

                  <li>
                    <a href="#">
                      <span class="label label-orange"><i class="fa fa-plus"></i></span>
                      New order.
                      <span class="small">36 mins</span>
                    </a>
                  </li>

                  <li>
                    <a href="#">
                      <span class="label label-cyan"><i class="fa fa-power-off"></i></span>
                      Server restared.
                      <span class="small">45 mins</span>
                    </a>
                  </li>

                  <li>
                    <a href="#">
                      <span class="label label-amethyst"><i class="fa fa-power-off"></i></span>
                      Server started.
                      <span class="small">50 mins</span>
                    </a>
                  </li>

                   <li><a href="#">Check all notifications <i class="fa fa-angle-right"></i></a></li>
                </ul>

              </li>

              <li class="dropdown divided user" id="current-user">
                <div class="profile-photo">
                  <img src="assets/images/profile-photo.jpg" alt />
                </div>
                <a class="dropdown-toggle options" data-toggle="dropdown" href="#">
                  John Douey <i class="fa fa-caret-down"></i>
                </a>
                
                <ul class="dropdown-menu arrow settings">

                  <li>
                    
                    <h3>Backgrounds:</h3>
                    <ul id="color-schemes">
                      <li><a href="#" class="bg-1"></a></li>
                      <li><a href="#" class="bg-2"></a></li>
                      <li><a href="#" class="bg-3"></a></li>
                      <li><a href="#" class="bg-4"></a></li>
                      <li><a href="#" class="bg-5"></a></li>
                      <li><a href="#" class="bg-6"></a></li>
                    </ul>

                    <div class="form-group videobg-check">
                      <label class="col-xs-8 control-label">Video BG</label>
                      <div class="col-xs-4 control-label">
                        <div class="onoffswitch greensea small">
                          <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="videobg-check">
                          <label class="onoffswitch-label" for="videobg-check">
                            <span class="onoffswitch-inner"></span>
                            <span class="onoffswitch-switch"></span>
                          </label>
                        </div>
                      </div>
                    </div>

                  </li>

                  <li class="divider"></li>

                  <li>
                    <a href="#"><i class="fa fa-user"></i> Profile</a>
                  </li>

                  <li>
                    <a href="#"><i class="fa fa-calendar"></i> Calendar</a>
                  </li>

                  <li>
                    <a href="#"><i class="fa fa-envelope"></i> Inbox <span class="badge badge-red" id="user-inbox">3</span></a>
                  </li>

                  <li class="divider"></li>

                  <li>
                    <a href="#"><i class="fa fa-power-off"></i> Logout</a>
                  </li>
                </ul>
              </li>

              <li>
                <a href="#mmenu"><i class="fa fa-comments"></i></a>
              </li>
            </ul>
            <!-- /Quick Actions -->



            <!-- Sidebar -->
            <jsp:include page="/jsp/Sidebar.jsp" />
            <!-- Sidebar end -->





          </div>
          <!--/.nav-collapse -->





        </div>
        <!-- Fixed navbar end -->
        
        <!-- Page content -->
        <div id="content" class="col-md-12">
          
          <!-- page header -->
          <div class="pageheader">
            <h2><i class="fa fa-puzzle-piece" style="line-height: 48px;padding-left: 5px;"></i> 流程任务表 <span> // The Flow Table </span></h2>
            <div class="breadcrumbs">
              <ol class="breadcrumb">
                <li>You are here</li>
                <li><a href="index.html">Minimal</a></li>
                <li><a href="tables.html">Tables</a></li>
                <li class="active">Bootstrap Tables</li>
              </ol>
            </div>
          </div>
          <!-- /page header -->
          
          <!-- content main container -->
          <div class="main">
			<!-- row -->

            <div class="row">

              <!-- col 12 -->
              <div class="col-md-12">
				
				<!-- tile -->
                <section class="tile color transparent-black">

				  <!-- tile header -->
                  <div class="tile-header">
                    <!-- <h1><strong>可填标题</strong> </h1> -->
                    <div class="controls">
                      <!-- 自动刷新开关 -->
                      <a onclick="changeInterval()"><i class="fa fa-refresh" id="refreshSwitch">&nbsp;&nbsp;自动刷新</i></a>
                    </div>
                  </div>
                  <!-- /tile header -->

                  <!-- tile body -->
                  <div class="tile-body nopadding">
                    
                    <table class="table-bigScr table table-hover " >
                      <thead>
                        <tr>
                          <th width='8%'>序号</th>
                          <th width='35%'>步骤</th>
                          <th width='8%'>前序</th>
                          <th width='8%'>终态</th>
                          <th width='10%'>执行状态</th>
                          <th width='11%'>责任人</th>
                          <th width='20%'>计划时间</th>
                        </tr>
                      </thead>
                      <tbody id="flowTable">
						<!-- 此处待添加流程内容 -->
                      </tbody>
                    </table>

                  </div>
                  <!-- /tile body -->
                
                </section>
                <!-- /tile -->

              
            </div>
            <!-- /row -->
          


          </div>
          <!-- /content container -->






        </div>
        <!-- Page content end -->




        <div id="mmenu" class="right-panel">
          <!-- Nav tabs -->
          <ul class="nav nav-tabs nav-justified">
            <li class="active"><a href="#mmenu-users" data-toggle="tab"><i class="fa fa-users"></i></a></li>
            <li class=""><a href="#mmenu-history" data-toggle="tab"><i class="fa fa-clock-o"></i></a></li>
            <li class=""><a href="#mmenu-friends" data-toggle="tab"><i class="fa fa-heart"></i></a></li>
            <li class=""><a href="#mmenu-settings" data-toggle="tab"><i class="fa fa-gear"></i></a></li>
          </ul>
              
          <!-- Tab panes -->
          <div class="tab-content">
            <div class="tab-pane active" id="mmenu-users">
              <h5><strong>Online</strong> Users</h5>

              <ul class="users-list">
                
                <li class="online">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/ici-avatar.jpg" alt>
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Ing. Imrich <strong>Kamarel</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Ulaanbaatar, Mongolia</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="online">
                  <div class="media">
                    
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/arnold-avatar.jpg" alt>
                    </a>
                    <span class="badge badge-red unread">3</span>

                    <div class="media-body">
                      <h6 class="media-heading">Arnold <strong>Karlsberg</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Bratislava, Slovakia</small>
                      <span class="badge badge-outline status"></span>
                    </div>

                  </div>
                </li>

                <li class="online">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/peter-avatar.jpg" alt>

                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Peter <strong>Kay</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Kosice, Slovakia</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="online">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/george-avatar.jpg" alt>
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">George <strong>McCain</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Prague, Czech Republic</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="busy">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/random-avatar1.jpg" alt>
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Lucius <strong>Cashmere</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Wien, Austria</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="busy">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/random-avatar2.jpg" alt>
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Jesse <strong>Phoenix</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Berlin, Germany</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

              </ul>

              <h5><strong>Offline</strong> Users</h5>

              <ul class="users-list">
                
                <li class="offline">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/random-avatar4.jpg" alt>
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Dell <strong>MacApple</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Paris, France</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="offline">
                  <div class="media">
                    
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/random-avatar5.jpg" alt>
                    </a>

                    <div class="media-body">
                      <h6 class="media-heading">Roger <strong>Flopple</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Rome, Italia</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                    
                  </div>
                </li>

                <li class="offline">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/random-avatar6.jpg" alt>

                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Nico <strong>Vulture</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Kyjev, Ukraine</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="offline">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/random-avatar7.jpg" alt>
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Bobby <strong>Socks</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Moscow, Russia</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="offline">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/random-avatar8.jpg" alt>
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Anna <strong>Opichia</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Budapest, Hungary</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

              </ul>

            </div>

            <div class="tab-pane" id="mmenu-history">
              <h5><strong>Chat</strong> History</h5>

              <ul class="history-list">
                
                <li class="online">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/ici-avatar.jpg" alt>
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Ing. Imrich <strong>Kamarel</strong></h6>
                      <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="busy">
                  <div class="media">
                    
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/arnold-avatar.jpg" alt>
                    </a>
                    <span class="badge badge-red unread">3</span>

                    <div class="media-body">
                      <h6 class="media-heading">Arnold <strong>Karlsberg</strong></h6>
                      <small>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</small>
                      <span class="badge badge-outline status"></span>
                    </div>

                  </div>
                </li>

                <li class="offline">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/peter-avatar.jpg" alt>

                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Peter <strong>Kay</strong></h6>
                      <small>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit </small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

              </ul>
                
            </div>

            <div class="tab-pane" id="mmenu-friends">
              <h5><strong>Friends</strong> List</h5>
                <ul class="favourite-list">
                
                <li class="online">
                  <div class="media">
                    
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/arnold-avatar.jpg" alt>
                    </a>
                    <span class="badge badge-red unread">3</span>

                    <div class="media-body">
                      <h6 class="media-heading">Arnold <strong>Karlsberg</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Bratislava, Slovakia</small>
                      <span class="badge badge-outline status"></span>
                    </div>

                  </div>
                </li>

                <li class="offline">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/random-avatar8.jpg" alt>
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Anna <strong>Opichia</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Budapest, Hungary</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="busy">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/random-avatar1.jpg" alt>
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Lucius <strong>Cashmere</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Wien, Austria</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="online">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/ici-avatar.jpg" alt>
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Ing. Imrich <strong>Kamarel</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Ulaanbaatar, Mongolia</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

              </ul>
            </div>

            <div class="tab-pane pane-settings" id="mmenu-settings">
              <h5><strong>Chat</strong> Settings</h5>

              <ul class="settings">
               
                <li>
                  <div class="form-group">
                    <label class="col-xs-8 control-label">Show Offline Users</label>
                    <div class="col-xs-4 control-label">
                      <div class="onoffswitch greensea">
                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-offline" checked="">
                        <label class="onoffswitch-label" for="show-offline">
                          <span class="onoffswitch-inner"></span>
                          <span class="onoffswitch-switch"></span>
                        </label>
                      </div>
                    </div>
                  </div>
                </li>

                <li>
                  <div class="form-group">
                    <label class="col-xs-8 control-label">Show Fullname</label>
                    <div class="col-xs-4 control-label">
                      <div class="onoffswitch greensea">
                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-fullname">
                        <label class="onoffswitch-label" for="show-fullname">
                          <span class="onoffswitch-inner"></span>
                          <span class="onoffswitch-switch"></span>
                        </label>
                      </div>
                    </div>
                  </div>
                </li>

                <li>
                  <div class="form-group">
                    <label class="col-xs-8 control-label">History Enable</label>
                    <div class="col-xs-4 control-label">
                      <div class="onoffswitch greensea">
                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-history" checked="">
                        <label class="onoffswitch-label" for="show-history">
                          <span class="onoffswitch-inner"></span>
                          <span class="onoffswitch-switch"></span>
                        </label>
                      </div>
                    </div>
                  </div>
                </li>

                <li>
                  <div class="form-group">
                    <label class="col-xs-8 control-label">Show Locations</label>
                    <div class="col-xs-4 control-label">
                      <div class="onoffswitch greensea">
                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-location" checked="">
                        <label class="onoffswitch-label" for="show-location">
                          <span class="onoffswitch-inner"></span>
                          <span class="onoffswitch-switch"></span>
                        </label>
                      </div>
                    </div>
                  </div>
                </li>

                <li>
                  <div class="form-group">
                    <label class="col-xs-8 control-label">Notifications</label>
                    <div class="col-xs-4 control-label">
                      <div class="onoffswitch greensea">
                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-notifications">
                        <label class="onoffswitch-label" for="show-notifications">
                          <span class="onoffswitch-inner"></span>
                          <span class="onoffswitch-switch"></span>
                        </label>
                      </div>
                    </div>
                  </div>
                </li>

                <li>
                  <div class="form-group">
                    <label class="col-xs-8 control-label">Show Undread Count</label>
                    <div class="col-xs-4 control-label">
                      <div class="onoffswitch greensea">
                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-unread" checked="">
                        <label class="onoffswitch-label" for="show-unread">
                          <span class="onoffswitch-inner"></span>
                          <span class="onoffswitch-switch"></span>
                        </label>
                      </div>
                    </div>
                  </div>
                </li>

              </ul>
                
            </div><!-- tab-pane -->
              
          </div><!-- tab-content -->
        </div>






      </div>
      <!-- Make page fluid-->




    </div>
    <!-- Wrap all page content end -->



    <section class="videocontent" id="video"></section>


    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="<%=basePath%>/assets/js/jquery.js"></script>
	<script src="<%=basePath%>/MyAssets/js/common.js"></script>
	<script src="<%=basePath%>/assets/js/menu.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=basePath%>/assets/js/vendor/bootstrap/bootstrap.min.js"></script>
    <!-- -<script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js?lang=css&skin=sons-of-obsidian"></script>  -->
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/mmenu/js/jquery.mmenu.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/sparkline/jquery.sparkline.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/nicescroll/jquery.nicescroll.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/animate-numbers/jquery.animateNumbers.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/videobackground/jquery.videobackground.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/blockui/jquery.blockUI.js"></script>
	<script src="<%=basePath%>/assets/js/vendor/chosen/chosen.jquery.min.js"></script>
	<script src="<%=basePath%>/assets/js/minimal.min.js"></script>
	
	<!-- 自定义JS -->
	<script type="text/javascript">
	//定义任务信息展现延迟时间
	var delay = 400;
	//定义一个定时器
	var interval = null;
	//定义自动刷新间隔时间
	var intervalTime = 3000;	//每隔3秒循环
	
	//修改间隔时间，在自动刷新与不刷新之间切换
	function changeInterval(){
		if(interval != null){
			clearInterval(interval);
			interval = null;
			$("#refreshSwitch").html("&nbsp;&nbsp;自动刷新");
			//alert(interval)
		}else{
			interval = setInterval('getFlow();', intervalTime);  //每隔3秒循环,获取流程数据
			$("#refreshSwitch").html("&nbsp;&nbsp;取消刷新");
			//alert(interval)
		}
	}
	
	$(document).ready(function() {//这个就是jQueryready，当所有需要加载的内容加载完后，就会执行，比onload更靠前  
		showMenu("flowMenu");	//生成菜单
		getFlow();
		tooEarlyTask();	//标记出过早完成的任务
	});	
	
	
	//定义最近一次获得的flowJson，用于刷新时的对比，有变化才刷新，无变化不刷新
	var lastFlowJson;
	

	//获得流程数据;	
	function getFlow() {
		var flow_id = $("#flow_id").val();
		$.ajax( { //一个Ajax过程 
					type : "post", //以post方式与后台沟通 
					url : "<%=basePath%>getTaskList.do", //与此处理该请求的servlet沟通 
					dataType : 'json',//从servlet返回的值以 JSON方式 解释 
					data : 'flow_id='+flow_id+'&time_mode=time', //发给servlet的数据 
					async: false,//设置为同步，以免之后的JS执行异常
					success : function(json) {//如果调用servlet成功 
						//alert(json.username+'\n'+json.password); //把php中的返回值（json.username）给 alert出来 
						
						//只有json数据有变化时，才刷新流程列表
						//alert(JSON.stringify(json) != lastFlowJson)
						if(JSON.stringify(json) != lastFlowJson){
							//首先清空tbody
							$("#flowTable").html("");
							//调用流程展现构造方法
							flowInit(json);
						}
						//把本次查询的json转成字符串放入lastFlowJson，供下次比对
						lastFlowJson = JSON.stringify(json);
					}
				});
	}
	
	//构造流程列表
	function flowInit(json) {
		var jsonData = eval(json);//接收到的数据转化为JQuery对象，由JQuery为我们处理
		//alert(JSON.stringify(jsonData))
		$.each(jsonData, function(index, objVal) { //遍历对象数组，index是数组的索引号，objVal是遍历的一个对象。  
					//val["属性"]可取到对应的属性值。  
					
			//在table中添加tr
			addTr("flowTable", objVal);
			
		});
	}
	
	//在parentId父元素中增加id为 tr_index的tr
	function addTr(parentId, objVal){
		
		//增加主TR，展现主要信息
		var stat = "";
		if(objVal.TASK_STAT=="0"){
			//stat = "<span class='label label-primary' style='display:inline-block;width:50px;'>待执行</span>";
			stat = '<div class="progress">'+
                      '<div class="progress-bar progress-bar-blue" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 100%">'+
                        '待执行'+
                      '</div></div>';
		}else if(objVal.TASK_STAT=="1"){
			//stat = "<span class='label label-red' style='display:inline-block;width:50px;'>执行中</span>";
			stat = "<div class='progress progress-striped active'>"+
                   "<div class='progress-bar progress-bar-orange' role='progressbar' aria-valuenow='40' aria-valuemin='0' aria-valuemax='100' style='width: 100%'>"+
                   "执行中"+
                   "</div></div>";
		}else if(objVal.TASK_STAT=="2"){
			//stat = "<span class='label label-warning'>异常</span>";
			stat = '<div class="progress">'+
                      '<div class="progress-bar progress-bar-red" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 100%">'+
                        '异常'+
                      '</div></div>';
		}else if(objVal.TASK_STAT=="3"){
			//stat = "<span class='label label-danger'>失败</span>";
			stat = '<div class="progress">'+
                      '<div class="progress-bar progress-bar-slategray" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 100%">'+
                        '失败'+
                      '</div></div>';
		}else if(objVal.TASK_STAT=="4"){
			//stat = "<span class='label label-success'>已完成</span>";
			stat = '<div class="progress">'+
                      '<div class="progress-bar progress-bar-greensea" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 100%">'+
                        '已完成'+
                      '</div></div>';
		}else{
			//stat = "<span class='label label-default'>未知</span>";
			stat = '<div class="progress">'+
                      '<div class="progress-bar progress-bar-transparent-translucent" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 100%">'+
                        '未知'+
                      '</div></div>';
		}
		
		//增加主TR，展现主要信息
		var stat_pre = "";
		if(objVal.TASK_STAT_PRE=="0"){
			//stat = "<span class='label label-primary' style='display:inline-block;width:50px;'>待执行</span>";
			stat_pre = '<div class="progress">'+
                      '<div class="progress-bar progress-bar-blue" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 100%">'+
                        '待执行'+
                      '</div></div>';
		}else if(objVal.TASK_STAT_PRE=="1"){
			//stat = "<span class='label label-red' style='display:inline-block;width:50px;'>执行中</span>";
			stat_pre = "<div class='progress progress-striped active'>"+
                   "<div class='progress-bar progress-bar-orange' role='progressbar' aria-valuenow='40' aria-valuemin='0' aria-valuemax='100' style='width: 100%'>"+
                   "执行中"+
                   "</div></div>";
		}else if(objVal.TASK_STAT_PRE=="2"){
			//stat = "<span class='label label-warning'>异常</span>";
			stat_pre = '<div class="progress">'+
                      '<div class="progress-bar progress-bar-red" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 100%">'+
                        '异常'+
                      '</div></div>';
		}else if(objVal.TASK_STAT_PRE=="3"){
			//stat = "<span class='label label-danger'>失败</span>";
			stat_pre = '<div class="progress">'+
                      '<div class="progress-bar progress-bar-slategray" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 100%">'+
                        '失败'+
                      '</div></div>';
		}else if(objVal.TASK_STAT_PRE=="4"){
			//stat = "<span class='label label-success'>已完成</span>";
			stat_pre = '<div class="progress">'+
                      '<div class="progress-bar progress-bar-greensea" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 100%">'+
                        '已完成'+
                      '</div></div>';
		}else{
			//stat = "<span class='label label-default'>未知</span>";
			stat_pre = '<div class="progress">'+
                      '<div class="progress-bar progress-bar-transparent-translucent" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 100%">'+
                        '未知'+
                      '</div></div>';
		}
		
		
		//任务ID前的空格
		var block = "";
		for(var i=1;i<objVal.TASK_LEVEL;i++){
			block = block +"&nbsp;"+"&nbsp;"+"&nbsp;";
		}
		
		//前置任务ID 没有则为空
		var front_task_id="";
		if(objVal.FRONT_TASK_ID != undefined) front_task_id = objVal.FRONT_TASK_ID;
		
		var table = "<tr id='tr_"+objVal.TASK_ID+"' onclick='showTaskInfoTr(this)'>"+
					"<td>"+block+objVal.TASK_ID+"</td>"+
					"<td>"+objVal.TASK_NAME+"</td>"+
					"<td onclick='gotoFront(this)'  class='' id='front_task_id_"+objVal.TASK_ID+"'>"+front_task_id+"</td>"+
					"<td>"+stat+"</td>"+
					"<td>"+stat_pre+"</td>"+
					"<td>"+objVal.HEADER_NAME+"</td>"+
					"<td>"+"P："+objVal.TASK_BEGIN_TIME_PLAN+" 至 "+objVal.TASK_END_TIME_PLAN+"</td>"+
					"</tr>";
		$(table).appendTo($("#"+parentId));	

		//增加副TR，展现状态选项、详情等次要信息
		var task_begin_time_real = objVal.TASK_BEGIN_TIME_REAL;	//实际开始时间
		var task_end_time_real = objVal.TASK_END_TIME_REAL;		//实际完成时间
		if(task_begin_time_real == undefined){
			task_begin_time_real = "未开始";
		}
		if(task_end_time_real == undefined){
			task_end_time_real = "未结束";
		}
		
		//判断content是否为undefined，是的话就变成空
		var content = objVal.TASK_CONTENT;
		if(content == undefined) content = "";
		
		table = "<tr id='tr_info_"+objVal.TASK_ID+"' style='display:none;'>"+
				"<td></td>"+
				"<td>"+"具体步骤："+content+"</td>"+
				"<td id='ok_"+objVal.TASK_ID+"'></td>"+
				"<td colspan='3'>"+
					"<select id='select_"+objVal.TASK_ID+"' class='chosen-select chosen-transparent form-control' onchange='changeStat(this)'>"+
						"<option value=''>请选择</option>"+
						"<option value='0'>待执行</option>"+
						"<option value='1'>执行中</option>"+
						"<option value='2'>异常</option>"+
						"<option value='3'>失败</option>"+
						"<option value='4'>已完成</option>"+
						"<option value='-1'>未知</option>"+
                    "</select>"+
				"</td>"+
				"<td onclick='inputTime(this)'>"+"A："+task_begin_time_real+" 至 "+task_end_time_real+"</td>"+
				"</tr>";
		$(table).appendTo($("#"+parentId));	

		//如果存在2级流程，将嵌套再次循环
		if(objVal.TASK != undefined){
			var objValChild = objVal.TASK;	//默认
			
			//判断是否"["开头，可恶的JSON bug
			var test = JSON.stringify(objVal.TASK).indexOf('[');
			//alert(test);
			if(test!=0){//开头不是"[",就需加上{"TASK":}
				//alert(''+JSON.stringify(objVal.TASK));
				objValChild = $.parseJSON('{"TASK":'+JSON.stringify(objVal.TASK)+'}');
				//alert(objValChild);
			} //否则无需更改
			
			$.each(objValChild, function(index1,objVal1) { //遍历对象数组，index是数组的索引号，objVal是遍历的一个对象。  
				//在table中添加tr
				addTr("flowTable", objVal1);
			});
		}
	}
	
	//展现隐藏的任务信息TR
	function showTaskInfoTr(thisObj){
		//alert(thisObj.id)
		//获得流程ID
		var flow_id = $("#flow_id").val();
		
		//获得任务ID
		var tr_id = thisObj.id;
		var task_id = tr_id.substring(3,tr_id.length);
		
		//如果当前任务信息TR是隐藏的，则将表格中所有任务信息TR隐藏，然后打开自己，否则只关闭自己
		if($("#tr_info_"+task_id).is(":hidden")){
			$("#flowTable tr").each(function (){
				if($(this)[0].id.indexOf("tr_info_")!=-1){	//是任务信息TR
					$(this).hide();	//隐藏
				}
			});
		}
		$("#tr_info_"+task_id).toggle(delay);	//切换该TR隐藏的状态	延迟delay毫秒
		
	}
	
	//聚焦前置任务
	function gotoFront(thisObj){
		//暂时空着，用处不大
	}
	
	//状态修改时，把参数传入隐藏域，展现提交图标
	function changeStat(thisObj){
		var select_id = thisObj.id;
		var task_id = select_id.substring(7,select_id.length);

		$("#task_id").val(task_id);
		$("#task_stat").val($(thisObj).val());
		
		$("#ok_"+task_id).html("<i class='fa fa-check' onclick='updateTask()'></i>");
	}
	
	//显示实际时间输入框，暂时不用此功能
	function inputTime(thisObj){

	}
	
	//提交对任务的修改
	function updateTask(){
		//本次提交所需要的参数，及提交检查
		var flow_id = $("#flow_id").val();
		var task_id = $("#task_id").val();
		var task_stat = $("#task_stat").val();
		
		$.ajax( { //一个Ajax过程 
					type : "post", //以post方式与后台沟通 
					url : "<%=basePath%>updateTask.do", //与此处理该请求的servlet沟通 
					//dataType : 'json',//从servlet返回的值以 JSON方式 解释   此处无需返回
					data : 'flow_id='+flow_id+'&task_id='+task_id+"&task_stat="+task_stat, //发给servlet的数据 
					success : function(string) {//如果调用servlet成功 
						//string 0:管理员修改成功；1：操作员修改成功；2：未知异常；3：非本人任务，操作拒绝
						if(string == "2" || string == ""){
							showMsg("操作【失  败】：未知异常！请重新登陆。");
						}else if(string == "3"){
							showMsg("操作【失  败】：您无权操作此任务！");
						}else{
							showMsg("操作【成  功】！");
						}
						getFlow();			  //则更新任务列表
					}
				});
	}
	</script>
    

    <script>
    $(function(){

      //check all checkboxes
      $('table thead input[type="checkbox"]').change(function () {
        $(this).parents('table').find('tbody input[type="checkbox"]').prop('checked', $(this).prop('checked'));
      });

      // sortable table
      $('.table.table-sortable th.sortable').click(function() {
        var o = $(this).hasClass('sort-asc') ? 'sort-desc' : 'sort-asc';
        $(this).parents('table').find('th.sortable').removeClass('sort-asc').removeClass('sort-desc');
        $(this).addClass(o);
      });

      //chosen select input
      $(".chosen-select").chosen({disable_search_threshold: 10});

      //check toggling
      $('.check-toggler').on('click', function(){
        $(this).toggleClass('checked');
      })
      
    })
      
    </script>
	
	<form action="action.do" method="POST">
		<!-- 隐藏参数 -->
	    <input type="hidden" id="flow_id" name="flow_id" value="${flow_id }"/>
	    <input type="hidden" id="actionName" name="actionName" value="taskTable"/>
	    <input type="hidden" id="task_id" name="task_id" value="" />
	    <input type="hidden" id="task_stat" name="task_stat" value="" />
    </form>
  </body>
</html>
      
