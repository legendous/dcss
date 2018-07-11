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
    <title>DCSS - Charts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

    <!-- Bootstrap -->
    <link href="<%=basePath%>/assets/css/vendor/bootstrap/bootstrap.css" rel="stylesheet">
    <link href="<%=basePath%>/Font-Awesome/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=basePath%>/assets/css/vendor/animate/animate.css">
    <link type="text/css" rel="stylesheet" media="all" href="<%=basePath%>/assets/js/vendor/mmenu/css/jquery.mmenu.all.css" />
    <link rel="stylesheet" href="<%=basePath%>/assets/js/vendor/videobackground/css/jquery.videobackground.css">
    <link rel="stylesheet" href="<%=basePath%>/assets/css/vendor/bootstrap-checkbox.css">

    <link rel="stylesheet" href="<%=basePath%>/assets/js/vendor/rickshaw/css/rickshaw.min.css">
    <link rel="stylesheet" href="<%=basePath%>/assets/js/vendor/morris/css/morris.css">

    <link href="<%=basePath%>/assets/css/minimal.css" rel="stylesheet">
    
    <!-- 自定义 -->
    <link href="<%=basePath%>/MyAssets/css/main.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    
    <style>
@-webkit-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@-o-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
.progress {
  height: 20px;
  margin-bottom: 20px;
  overflow: hidden;
  background-color: #418bca  !important;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
          box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
}
.progress-bar {
  float: left;
  width: 0;
  height: 100%;
  font-size: 12px;
  line-height: 20px;
  color: #fff;
  text-align: center;
  background-color: #337ab7;
  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .15);
          box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .15);
  -webkit-transition: width .6s ease;
       -o-transition: width .6s ease;
          transition: width .6s ease;
}
.progress-striped .progress-bar,
.progress-bar-striped {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:      -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:         linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  -webkit-background-size: 40px 40px;
          background-size: 40px 40px;
}
.progress.active .progress-bar,
.progress-bar.active {
  -webkit-animation: progress-bar-stripes 2s linear infinite;
       -o-animation: progress-bar-stripes 2s linear infinite;
          animation: progress-bar-stripes 2s linear infinite;
}
.progress-bar-success {
  background-color: #5cb85c;
}
.progress-striped .progress-bar-success {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:      -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:         linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
}
.progress-bar-info {
  background-color: #5bc0de;
}
.progress-striped .progress-bar-info {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:      -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:         linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
}
.progress-bar-warning {
  background-color: #f0ad4e;
}
.progress-striped .progress-bar-warning {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:      -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:         linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
}
.progress-bar-danger {
  background-color: #d9534f;
}
.progress-striped .progress-bar-danger {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:      -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:         linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
}    
    
    
/******************************************/
/************* PROGRESS BARS **************/
/******************************************/
.progress-info {
  margin-bottom: 5px; }
  .progress-info .desc {
    font-size: 12px; }
  .progress-info .percent {
    padding-left: 10px;
    margin-top: 1px;
    display: inline-block;
    font-weight: 600;
    float: right;
    font-size: 12px; }

.progress {
  background-color: #e5e5e5;
  -webkit-box-shadow: none;
  box-shadow: none; }
  .progress.progress-thin {
    height: 10px; }
  .progress.progress-little {
    height: 5px; }
  .progress.no-radius {
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    -ms-border-radius: 0;
    -o-border-radius: 0;
    border-radius: 0; }
  .progress.nomargin {
    margin-bottom: 5px; }
  .progress.progress-transparent-black {
    background-color: rgba(0, 0, 0, 0.1); }
  .progress.progress-transparent-black .progress-bar {
      background-color: rgba(0, 0, 0, 0.15); }
  .progress .progress-bar {
    -webkit-box-shadow: none;
    box-shadow: none; }
    .progress .progress-bar.animate-progress-bar {
      -webkit-transition: width 2.5s ease !important;
      -moz-transition: width 2.5s ease !important;
      transition: width 2.5s ease !important; }
    .progress .progress-bar.progress-bar-green {
      background-color: #a2d200; }
    .progress .progress-bar.progress-bar-cyan {
      background-color: #22beef; }
    .progress .progress-bar.progress-bar-orange {
      background-color: #ffc100; }
    .progress .progress-bar.progress-bar-red {
      background-color: #ff4a43; }
    .progress .progress-bar.progress-bar-amethyst {
      background-color: #cd97eb; }
    .progress .progress-bar.progress-bar-greensea {
      background-color: #16a085; }
    .progress .progress-bar.progress-bar-dutch {
      background-color: #1693a5; }
    .progress .progress-bar.progress-bar-hotpink {
      background-color: #ff0066; }
    .progress .progress-bar.progress-bar-drank {
      background-color: #a40778; }
    .progress .progress-bar.progress-bar-blue {
      background-color: #418bca; }
    .progress .progress-bar.progress-bar-slategray {
      background-color: #3f4e62; }
    .progress .progress-bar.progress-bar-redbrown {
      background-color: #d9544f; }
    .progress .progress-bar.progress-bar-transparent-white {
      background-color: rgba(255, 255, 255, 0.8); }
    .progress .progress-bar.progress-bar-transparent-black {
      background-color: rgba(0, 0, 0, 0.8); }
    .progress .progress-bar.progress-bar-transparent-translucent {
      background-color: rgba(0, 0, 0, 0.2); }

.progress-list {
  margin: 0;
  padding: 0;
  list-style-type: none;
  position: relative; }
  .progress-list .details {
    display: inline-block;
    float: left; }
    .progress-list .details .title {
      font-size: 14px;
      font-weight: 500;
      line-height: 16px;
      color: rgba(255, 255, 255, 0.8); }
    .progress-list .details .description {
      font-weight: 500;
      text-transform: uppercase;
      font-size: 10px;
      color: rgba(255, 255, 255, 0.7);
      line-height: 12px; }
  .progress-list .status {
    display: inline-block;
    background-color: #f2f2f2;
    font-size: 9px;
    padding: 6px;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    -ms-border-radius: 2px;
    -o-border-radius: 2px;
    border-radius: 2px;
    color: white;
    font-weight: 500; }
  .progress-list .clearfix {
    height: 30px; }
  .progress-list .progress {
    margin-bottom: 15px; }
  .progress-list.with-heading .details .title h2 {
    margin-bottom: 0 !important; }
  .progress-list.with-heading .status {
    position: absolute;
    bottom: 8px;
    right: 0; }
  .progress-list.with-heading .clearfix {
    height: 35px; }
    </style>
    
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
          <div class="navbar-header col-sm-2">
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
                <a class="navbar-brand">
	              <strong>进度展示</strong> // Progress
	            </a>
                <!-- 自动刷新开关 -->
	            <a onclick="changeInterval('refreshFuntion()')">
	              <i class="fa fa-refresh auto-refresh">&nbsp;&nbsp;取消刷新</i>
	            </a>
              </li>
            </ul>
            <!-- /Page refresh -->

            <!-- Sidebar -->
            <jsp:include page="/jsp/Sidebar.jsp" />
            <!-- Sidebar end -->

          </div>
          <!--/.nav-collapse -->

        </div>
        <!-- Fixed navbar end -->

        <!-- Page content -->
        <div id="content" class="col-sm-12">

          <!-- content main container -->
          <div class="main">

            <!-- row -->
            <div class="row">
            
              <!-- col 12 -->
              <div class="col-sm-12">
              
              	<!-- tile -->
                <section class="tile color transparent-black">



                  <!-- tile header -->
                  <div class="tile-header">
                    <h1>任务进度</h1>
                  </div>
                  <!-- /tile header -->

                  <!-- tile body -->
                  <div class="tile-body nopadding">
                    
                    <table class="table">
                      <thead>
                        <tr>
                          <th style="width:25%">部门名称</th>
                          <th style="width:50%">完成度</th>
                          <th style="width:25%">任务数</th>
                        </tr>
                      </thead>
                      <tbody id="tbody">
                      	<!-- js添加tr -->
                      </tbody>
                    </table>
                    
                  </div>
                  <!-- /tile body -->
                  
                </section>
                <!-- /tile -->
                
              </div>
              <!-- /col 12 -->
              



            </div>
            <!-- /row -->

          </div>
          <!-- /content container -->

        </div>
        <!-- Page content end -->

      </div>
      <!-- Make page fluid-->

    </div>
    <!-- Wrap all page content end -->


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="<%=basePath%>/assets/js/jquery.js"></script>
	<script src="<%=basePath%>/MyAssets/js/common.js"></script>
	<script src="<%=basePath%>/assets/js/menu.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=basePath%>/assets/js/vendor/bootstrap/bootstrap.min.js"></script>
    <!-- <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js?lang=css&skin=sons-of-obsidian"></script> -->
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/mmenu/js/jquery.mmenu.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/sparkline/jquery.sparkline.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/nicescroll/jquery.nicescroll.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/animate-numbers/jquery.animateNumbers.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/videobackground/jquery.videobackground.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/blockui/jquery.blockUI.js"></script>

    <script src="<%=basePath%>/assets/js/vendor/flot/jquery.flot.min.js"></script>
    <script src="<%=basePath%>/assets/js/vendor/flot/jquery.flot.categories.min.js"></script>
    <script src="<%=basePath%>/assets/js/vendor/flot/jquery.flot.pie.min.js"></script>
    <script src="<%=basePath%>/assets/js/vendor/flot/jquery.flot.stack.min.js"></script>
    <script src="<%=basePath%>/assets/js/vendor/graphtable/jquery.graphTable-0.3.js"></script>
    <script src="<%=basePath%>/assets/js/vendor/flot/jquery.flot.tooltip.min.js"></script>

    <script src="<%=basePath%>/assets/js/minimal.min.js"></script>

	<!-- 自定义JS -->
	<script type="text/javascript">
	
	$(document).ready(function() {//这个就是jQueryready，当所有需要加载的内容加载完后，就会执行，比onload更靠前  
		showMenu("flowMenu");	//生成菜单
		changeInterval("refreshFuntion()");	//开始刷新
	});
	
		//用于自动刷新的函数
	function refreshFuntion(){
		taskProgress();
	}
	
	//查询百分比时所用的上一次查询结果
	var lastJson_Progress;
	
	//查询任务完成百分比
	function taskProgress(){
		var flow_id = $("#flow_id").val();
		$.ajax( { //一个Ajax过程 
					type : "post", //以post方式与后台沟通 
					url : "<%=basePath%>getTaskProgress.do", //与此处理该请求的servlet沟通 
					dataType : 'json',//从servlet返回的值以 JSON方式 解释 
					data : 'flow_id='+flow_id, //发给servlet的数据 
					async: false,//设置为同步，以免之后的JS执行异常
					success : function(json) {//如果调用servlet成功 
						//alert(json.username+'\n'+json.password); //把php中的返回值（json.username）给 alert出来 
						//只有json数据有变化时，才刷新流程列表
						if(JSON.stringify(json) != lastJson_Progress){
							//首先清空tbody
							$("#tbody").html("");
							
							$.each(json, function(index, objVal) { //遍历对象数组，index是数组的索引号，objVal是遍历的一个对象。    		
								
								//定义不同完成度下的进度条颜色样式
								var barClass = "";
								if(0<=objVal.COMPLETEPERCENT && objVal.COMPLETEPERCENT<25){			//0~25
									barClass = "progress-bar-drank";
								}else if(25<=objVal.COMPLETEPERCENT && objVal.COMPLETEPERCENT<50){	//25-50
									barClass = "progress-bar-red";
								}else if(50<=objVal.COMPLETEPERCENT && objVal.COMPLETEPERCENT<75){	//50-75
									barClass = "progress-bar-orange";
								}else if(75<=objVal.COMPLETEPERCENT && objVal.COMPLETEPERCENT<100){	//75-99
									barClass = "progress-bar-green";
								}else{																//100 完成
									barClass = "progress-bar-greensea";
								}
								
								//将查得的任务完成百分比填入表格，构造tr
								var tr='<tr>'+
								         '<td>'+objVal.USER_NAME+'</td>'+
								         '<td>'+
								         	'<div class="progress progress-striped active">'+
						                      '<div class="progress-bar '+barClass+'" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: '+objVal.COMPLETEPERCENT+'%">'+
						                        '<span class="sr-only">'+objVal.COMPLETEPERCENT+'% Complete</span>'+objVal.COMPLETEPERCENT+'%'+
						                      '</div>'+
						                    '</div>'+
										 '</td>'+
								         '<td>'+objVal.COMPLETENUM+'/'+objVal.TOTOLNUM+'</td>'+
								       '</tr>';
								$(tr).appendTo($("#tbody"));
							});
						}
						//把本次查询的json转成字符串放入lastFlowJson，供下次比对
						lastJson_Progress = JSON.stringify(json);
					}
				});
	}
	</script>

    
    <form action="action.do" method="POST">
	    <!-- 隐藏参数 -->
	    <input type="hidden" id="flow_id" name="flow_id" value="${flow_id }" />
	    <input type="hidden" id="actionName" name="actionName" value="${actionName }" />
    </form>
  </body>
</html>
      
