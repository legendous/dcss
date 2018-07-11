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
    <title>Minimal 1.0 - Tables</title>
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
                <a href="#" class="page-refresh"><i class="fa fa-refresh"></i></a>
                <a class="navbar-brand">
	              <strong>流程任务表</strong> // The Flow Table
	            </a>
              </li>
            </ul>
            <!-- /Page refresh -->

            <!-- Sidebar -->
            <ul class="nav navbar-nav side-nav" id="sidebar">
              
              <li class="collapsed-content"> 
                <ul>
                  <li class="search"><!-- Collapsed search pasting here at 768px --></li>
                </ul>
              </li>

              <li class="navigation" id="navigation">
                <a href="#" class="sidebar-toggle" data-toggle="#navigation">Navigation <i class="fa fa-angle-up"></i></a>
                
                <ul class="menu">
                
				  <li class="dropdown open active">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-tachometer"></i> 流程任务 <b class="fa fa-plus dropdown-plus"></b>
                      <span class="badge badge-red">2</span>
                    </a>
                    <ul class="dropdown-menu">
                      <li>
                        <a href="<%=basePath%>flowChoose.do?flow_id=1">
                          <i class="fa fa-caret-right"></i> 网银迁移
                        </a>
                      </li>
                      <li>
                        <a href="<%=basePath%>flowChoose.do?flow_id=2">
                          <i class="fa fa-caret-right"></i> 核心迁移
                        </a>
                      </li>
                    </ul>
                  </li>
				  
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-th-large"></i> 前台展示 <b class="fa fa-plus dropdown-plus"></b>
                    </a>
                    <ul class="dropdown-menu">
                      <li>
                        <a href="flow_table.jsp">
                          <i class="fa fa-list"></i> 流程任务表
                        </a>
                      </li>
                      <li>
                        <a href="flow_timeline.jsp">
                          <i class="fa fa-retweet"></i> 流程时序图
                        </a>
                      </li>
                      <li>
                        <a href="organization.jsp">
                          <i class="fa fa-sitemap"></i> 人员组织架构
                        </a>
                      </li>
                      <li>
                        <a href="charts.jsp">
                          <i class="fa fa-bar-chart-o"></i> 仪表盘
                        </a>
                      </li>
                    </ul>
                  </li>

                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-desktop"></i> 后台操作 <b class="fa fa-plus dropdown-plus"></b>
                    </a>
                    <ul class="dropdown-menu">
                      <li>
                        <a href="task_table.jsp">
                          <i class="fa fa-pencil"></i> 任务状态
                        </a>
                      </li>
                      <li>
                        <a href="task_confirm.jsp">
                          <i class="fa fa-phone"></i> 进度确认
                        </a>
                      </li>
                    </ul>
                  </li>
                  
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-cog"></i> 设置管理 <b class="fa fa-plus dropdown-plus"></b>
                    </a>
                    <ul class="dropdown-menu">
                      <li>
                        <a href="task_table.jsp">
                          <i class="fa fa-list"></i> 任务设置
                        </a>
                      </li>
                      <li>
                        <a href="task_confirm.jsp">
                          <i class="fa fa-user"></i> 人员管理
                        </a>
                      </li>
                    </ul>
                  </li>

                  <li>
                    <a href="charts.html">
                      <i class="fa fa-cogs"></i> VCS配置
                    </a>
                  </li>


                </ul>

              </li>
              
            </ul>
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
                    <h2 id="tile-header"><strong></strong> </h2>
                    <div class="controls">
                      <!-- 自动刷新开关 -->
                      <a onclick="changeInterval()"><i class="fa fa-refresh" id="refreshSwitch">&nbsp;&nbsp;自动刷新</i></a>
                    </div>
                  </div>
                  <!-- /tile header -->

                  <!-- tile body -->
                  <div class="tile-body nopadding">
                    
                    <table class="table table-hover" >
                      <thead>
                        <tr>
                          <th width='15%'>序号</th>
                          <th width='35%'>步骤</th>
                          <th width='8%'>前序</th>
                          <th width='8%'>状态</th>
                          <th width='11%'>责任人</th>
                          <th width='25%'>计划时间</th>
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

      </div>
      <!-- Make page fluid-->

    </div>
    <!-- Wrap all page content end -->


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="<%=basePath%>/assets/js/jquery.js"></script>
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
		getFlow();
	});	
	
	
	//定义最近一次获得的flowJson，用于刷新时的对比，有变化才刷新，无变化不刷新
	var lastFlowJson;
	

	//获得流程数据;	
	function getFlow() {
		
		$.ajax( { //一个Ajax过程 
					type : "post", //以post方式与后台沟通 
					url : "<%=basePath%>getTaskList.do", //与此处理该请求的servlet沟通 
					dataType : 'json',//从servlet返回的值以 JSON方式 解释 
					data : 'flow_id=1', //发给servlet的数据 
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
		//增加流程名称 in tile-heading
		$("#tile-header").html('<strong>'+objVal.FLOW_NAME+'</strong>');
		
		//增加主TR，展现主要信息
		var stat = "";
		if(objVal.TASK_STAT=="0"){
			stat = "<span class='label label-primary'>待执行</span>";
		}else if(objVal.TASK_STAT=="1"){
			stat = "<span class='label label-red' style='display:inline-block;width:50px;'>执行中</span>";
		}else if(objVal.TASK_STAT=="2"){
			stat = "<span class='label label-warning'>异常</span>";
		}else if(objVal.TASK_STAT=="3"){
			stat = "<span class='label label-danger'>失败</span>";
		}else if(objVal.TASK_STAT=="4"){
			stat = "<span class='label label-success'>已完成</span>";
		}else{
			stat = "<span class='label label-default'>未知</span>";
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
					"<td onclick='gotoFront(this)'>"+front_task_id+"</td>"+
					"<td>"+stat+"</td>"+
					"<td>"+objVal.HEADER_NAME+"</td>"+
					"<td>"+objVal.TASK_BEGIN_TIME_PLAN+" 至 "+objVal.TASK_END_TIME_PLAN+"</td>"+
					"</tr>";
		$(table).appendTo($("#"+parentId));	

		//增加副TR，展现人员、详情等次要信息（其中人员信息在被单击时独立查询）
		var task_begin_time_real = objVal.TASK_BEGIN_TIME_REAL;	//实际开始时间
		var task_end_time_real = objVal.TASK_END_TIME_REAL;		//实际完成时间
		if(task_begin_time_real == undefined){
			task_begin_time_real = "未开始";
		}
		if(task_end_time_real == undefined){
			task_end_time_real = "未结束";
		}
		
		table = "<tr id='tr_info_"+objVal.TASK_ID+"' style='display:none;'>"+
				"<td></td>"+
				"<td>"+"具体步骤："+objVal.TASK_CONTENT+"</td>"+
				"<td></td>"+
				"<td colspan='2' id='td_users_"+objVal.TASK_ID+"'>"+"参与者："+"</td>"+
				"<td>"+"实际："+task_begin_time_real+" 至 "+task_end_time_real+"</td>"+
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
		var FLOW_ID = $("#FLOW_ID").val();
		
		//获得任务ID
		var tr_id = thisObj.id;
		var TASK_ID = tr_id.substring(3,tr_id.length);
		
		//如果当前任务信息TR是隐藏的，则将表格中所有任务信息TR隐藏，然后打开自己，否则只关闭自己
		if($("#tr_info_"+TASK_ID).is(":hidden")){
			$("#flowTable tr").each(function (){
				if($(this)[0].id.indexOf("tr_info_")!=-1){	//是任务信息TR
					$(this).hide();	//隐藏
				}
			});
		}
		$("#tr_info_"+TASK_ID).toggle(delay);	//切换该TR隐藏的状态	延迟delay毫秒
		
		//查询参与人信息并填入表格中
		getTaskUsers(FLOW_ID, TASK_ID);
	}
	
	//构造TaskInfo TR,并展现出来
	function getTaskUsers(FLOW_ID, TASK_ID){
		var tdHTML = "参与者：";
		//将流程ID和任务ID作为参数，查询该任务的参与者信息
		$.ajax( { //一个Ajax过程 
					type : "post", //以post方式与后台沟通 
					url : "<%=basePath%>getTaskUsers.do", //与此处理该请求的servlet沟通 
					async:false,	//改成同步，使后面的JS在AJAX完成返回后才执行，以防需要用ajax返回值时取不到
					dataType : 'json',//从servlet返回的值以 JSON方式 解释 
					data : 'FLOW_ID='+FLOW_ID+'&TASK_ID='+TASK_ID, //发给servlet的数据 
					success : function(json) {//如果调用servlet成功 
						//alert(json.username+'\n'+json.password); //把php中的返回值（json.username）给 alert出来 
						//调用流程展现构造方法
						//alert(JSON.stringify(json));
						var jsonData = eval(json);//接收到的数据转化为JQuery对象，由JQuery为我们处理
						if(jQuery.isEmptyObject(jsonData)){
							tdHTML += "无";
						}else{
							//去到名字放入tdContent
							$.each(jsonData, function(index, objVal) { //遍历对象数组，index是数组的索引号，objVal是遍历的一个对象。  
										//val["属性"]可取到对应的属性值。  
								tdHTML += objVal.USER_NAME;
								tdHTML += "&nbsp;&nbsp;"
							});
						}
						$("#td_users_"+TASK_ID).html(tdHTML);
					}
			});
	}
	
	//聚焦前置任务
	function gotoFront(thisObj){
		//暂时空着，用处不大
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
    
    <!-- 隐藏参数 -->
    <input type="hidden" id="FLOW_ID" value="2" />
  </body>
</html>
      
