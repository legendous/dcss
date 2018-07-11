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
    <link href="<%=basePath%>/assets/css/vendor/bootstrap/bootstrap.css" rel="stylesheet">
    <link href="<%=basePath%>/Font-Awesome/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=basePath%>/assets/css/vendor/animate/animate.css">
    <link type="text/css" rel="stylesheet" media="all" href="<%=basePath%>/assets/js/vendor/mmenu/css/jquery.mmenu.all.css" />
    <link rel="stylesheet" href="<%=basePath%>/assets/js/vendor/videobackground/css/jquery.videobackground.css">
    <link rel="stylesheet" href="<%=basePath%>/assets/css/vendor/bootstrap-checkbox.css">
	<link rel="stylesheet" href="<%=basePath%>/assets/js/vendor/chosen/css/chosen.min.css">
    <link rel="stylesheet" href="<%=basePath%>/assets/js/vendor/chosen/css/chosen-bootstrap.css">
	<link href="<%=basePath%>/assets/css/minimal.css" rel="stylesheet">
	
	<!-- 自定义 -->
    <link href="<%=basePath%>/MyAssets/css/main.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

	<!-- 重写或自定义样式 -->
	<style>

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
	              <strong>流程任务表</strong> // The Flow Table
	            </a>
	            <a href="#" class="page-refresh"><i class="fa fa-refresh"></i></a>
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
                    <h2 id="tile-header"></h2>
                    <div class="controls">
                      <!-- 自动刷新开关 -->
                      <a onclick="changeInterval('refreshFuntion()')"><i class="fa fa-refresh auto-refresh" id="refreshSwitch">&nbsp;&nbsp;取消刷新</i></a>
                    </div>
                  </div>
                  <!-- /tile header -->

                  <!-- tile body -->
                  <div class="tile-body nopadding">
                    
                    <table class="table-bigScr table table-hover" >
                      <thead>
                        <tr>
                          <th width='15%'>序号</th>
                          <th width='28%'>步骤</th>
                          <th width='10%'>前序</th>
                          <th width='12%'>状态</th>
                          <th width='15%'>责任人</th>
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
	$(document).ready(function() {//这个就是jQueryready，当所有需要加载的内容加载完后，就会执行，比onload更靠前  
		showMenu("flowMenu");	//生成菜单
		getFlow();	//获得流程
		changeInterval("refreshFuntion()");	//开始刷新
	});	
	
	//用于自动刷新的函数
	function refreshFuntion(){
		getFlow();
		tooEarlyTask();
	}
	
	//定义最近一次获得的flowJson，用于刷新时的对比，有变化才刷新，无变化不刷新
	var lastFlowJson;
	

	//获得流程数据;	
	function getFlow() {
		//获得流程ID
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
		//增加流程名称 in tile-heading
		$("#tile-header").html(objVal.FLOW_NAME);
		
		//增加主TR，展现主要信息
		var stat = "";
		if(objVal.TASK_STAT=="0"){
			//stat = "<span class='label label-primary'>待执行</span>";
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
		
		//判断content是否为undefined，是的话就变成空
		var content = objVal.TASK_CONTENT;
		if(content == undefined) content = "";
		
		table = "<tr id='tr_info_"+objVal.TASK_ID+"' style='display:none;'>"+
				"<td></td>"+
				"<td>"+"具体步骤："+content+"</td>"+
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
		
		//查询参与人信息并填入表格中
		getTaskUsers(flow_id, task_id);
	}
	
	//构造TaskInfo TR,并展现出来
	function getTaskUsers(flow_id, task_id){
		var tdHTML = "参与者：";
		//将流程ID和任务ID作为参数，查询该任务的参与者信息
		$.ajax( { //一个Ajax过程 
					type : "post", //以post方式与后台沟通 
					url : "<%=basePath%>getTaskUsers.do", //与此处理该请求的servlet沟通 
					async:false,	//改成同步，使后面的JS在AJAX完成返回后才执行，以防需要用ajax返回值时取不到
					dataType : 'json',//从servlet返回的值以 JSON方式 解释 
					data : 'flow_id='+flow_id+'&task_id='+task_id, //发给servlet的数据 
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
						$("#td_users_"+task_id).html(tdHTML);
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
    
    <form action="action.do" method="POST">
    <!-- 隐藏参数 -->
    <input type="hidden" id="flow_id" name="flow_id" value="${flow_id }" />
    <input type="hidden" id="actionName" name="actionName" value="${actionName }" />
    </form>
  </body>
</html>
      
