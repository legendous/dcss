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
    
    <link rel="stylesheet" href="<%=basePath%>/assets/js/vendor/jgrowl/css/jquery.jgrowl.min.css">
    <link rel="stylesheet" href="<%=basePath%>/assets/js/vendor/chosen/css/chosen.min.css">
    <link rel="stylesheet" href="<%=basePath%>/assets/js/vendor/chosen/css/chosen-bootstrap.css">
    <link rel="stylesheet" href="<%=basePath%>/assets/js/vendor/typeahead/css/typeahead.js-bootstrap.css">
    <link rel="stylesheet" href="<%=basePath%>/assets/js/vendor/datepicker/css/bootstrap-datetimepicker.css">
    <link rel="stylesheet" href="<%=basePath%>/assets/js/vendor/no-ui-slider/css/jquery.nouislider.min.css">
    <link rel="stylesheet" href="<%=basePath%>/assets/js/vendor/tabdrop/css/tabdrop.css">
    
    <link href="<%=basePath%>/assets/css/minimal.css" rel="stylesheet">
    <link href="<%=basePath%>/MyAssets/css/main.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    
    
	<!-- 重写或自定义样式 -->
	<style>

	.fa-spinner:before {
	  content: "\f110";
	  animation:rotation 2.5s linear infinite;
	  -webkit-animation:rotation 2.5s linear infinite;
	  -moz-animation:rotation 2.5s linear infinite;
	}
	@keyframes rotation {
	    0% {transform:rotate(0deg);}
	    100% {transform:rotate(-360deg);}
	}
	@-webkit-keyframes rotation {
	    0% {-webkit-transform:rotate(0deg);}
	    100% {-webkit-transform:rotate(-360deg);}
	}
	@-moz-keyframes rotation {
	    0% {-moz-transform:rotate(0deg);}
	    100% {-moz-transform:rotate(-360deg);}
	}

	/*********************************/
	/************* CARDS *************/
	/*********************************/
	.card-container {
	  position: relative;
	  min-height: 80px;
	  margin-top: 10px;
	  margin-bottom: 5px; }
	  .card-container .card {
	    height: 100%;
	    position: relative;
	    -webkit-perspective: 600px;
	    -moz-perspective: 600px;
	    perspective: 600px;
	    width: 100%;
	    cursor: pointer; }
	    .card-container .card .front {
	      height: 100%;
	      position: relative;
	      width: 100%;
	      padding: 10px;
	      min-height: 95px;
	      top: 0;
	      left: 0;
	      z-index: 900;
	      -webkit-border-radius: 4px;
	      -moz-border-radius: 4px;
	      -ms-border-radius: 4px;
	      -o-border-radius: 4px;
	      border-radius: 4px;
	      -webkit-box-shadow: 0 3px 0 rgba(0, 0, 0, 0.05);
	      box-shadow: 0 3px 0 rgba(0, 0, 0, 0.05);
	      -webkit-transform: rotateX(0deg) rotateY(0deg);
	      -moz-transform: rotateX(0deg) rotateY(0deg);
	      -ms-transform: rotateX(0deg) rotateY(0deg);
	      -o-transform: rotateX(0deg) rotateY(0deg);
	      transform: rotateX(0deg) rotateY(0deg);
	      -webkit-transform-style: preserve-3d;
	      -moz-transform-style: preserve-3d;
	      -ms-transform-style: preserve-3d;
	      -o-transform-style: preserve-3d;
	      transform-style: preserve-3d;
	      -webkit-backface-visibility: hidden;
	      backface-visibility: hidden;
	      /* -- transition is the magic sauce for animation -- */
	      -webkit-transition: all 0.4s ease-in-out;
	      -moz-transition: all 0.4s ease-in-out;
	      transition: all 0.4s ease-in-out; }
	      
	      /* -- media已删除，无用 -- */
	      .card-container .card .front .media {
	        margin-bottom: 10px; }
	        .card-container .card .front .media .media-object {
	          font-size: 48px;
	          margin-top: 5px; }
	        .card-container .card .front .media .media-body small {
	          font-size: 12px;
	          color: rgba(255, 255, 255, 0.5);
	          text-transform: uppercase;
	          font-weight: 300; }
	        .card-container .card .front .media .media-body h2 {
	          font-family: "Roboto", "Arial", sans-serif;
	          font-weight: 400; }
	      /* -- media已删除，无用 -- */
	      
	      /* -- progress-list已删除，无用 -- */
	      .card-container .card .front .progress-list .details .title {
	        font-weight: 400;
	        font-size: 11px;
	        line-height: normal;
	        text-transform: uppercase;
	        color: rgba(255, 255, 255, 0.5); }
	      .card-container .card .front .progress-list .status {
	        font-size: 9px;
	        padding: 3px 6px;
	        -webkit-border-radius: 2px;
	        -moz-border-radius: 2px;
	        -ms-border-radius: 2px;
	        -o-border-radius: 2px;
	        border-radius: 2px; }
	      .card-container .card .front .progress-list .clearfix {
	        height: 20px; }
	      .card-container .card .front .progress-list .progress {
	        margin-bottom: 0; }
	      /* -- progress-list已删除，无用 -- */
	      
	    .card-container .card.flip .front {
	      z-index: 900;
	      -webkit-transform: rotateY(180deg);
	      -moz-transform: rotateY(180deg);
	      -ms-transform: rotateY(180deg);
	      -o-transform: rotateY(180deg);
	      transform: rotateY(180deg); }
	    .card-container .card.flip .back {
	      z-index: 1000;
	      -webkit-transform: rotateX(0deg) rotateY(0deg);
	      -moz-transform: rotateX(0deg) rotateY(0deg);
	      -ms-transform: rotateX(0deg) rotateY(0deg);
	      -o-transform: rotateX(0deg) rotateY(0deg);
	      transform: rotateX(0deg) rotateY(0deg); }
	      
	    .card-container .card .back {
	      position: absolute;
	      top: 0;
	      background-color: inherit !important;
      	  color: inherit !important;
	      border: 0;
	      padding: 15px 5px 5px 5px;
	      text-align: center;
	      height: auto;
	      width: 100%;
	      min-height: 95px;
	      left: 0;
	      z-index: 800;
	      -webkit-border-radius: 4px;
	      -moz-border-radius: 4px;
	      -ms-border-radius: 4px;
	      -o-border-radius: 4px;
	      border-radius: 4px;
	      -webkit-box-shadow: 0 3px 0 rgba(0, 0, 0, 0.05);
	      box-shadow: 0 3px 0 rgba(0, 0, 0, 0.05);
	      -webkit-transform: rotateY(-180deg);
	      -moz-transform: rotateY(-179deg);
	      /* setting to 180 causes an unnatural-looking half-flip */
	      transform: rotateY(-179deg);
	      -webkit-transform-style: preserve-3d;
	      -moz-transform-style: preserve-3d;
	      -ms-transform-style: preserve-3d;
	      -o-transform-style: preserve-3d;
	      transform-style: preserve-3d;
	      -webkit-backface-visibility: hidden;
	      backface-visibility: hidden;
	      /* -- transition is the magic sauce for animation -- */
	      -webkit-transition: all 0.4s ease-in-out;
	      -moz-transition: all 0.4s ease-in-out;
	      transition: all 0.4s ease-in-out; }
	      .card-container .card .back > a {
	        display: block;
	        color: #717171;
	        font-size: 18px;
	        font-weight: 300;
	        line-height: 30px; }
	        .card-container .card .back > a:hover {
	          text-decoration: none;
	          color: #418bca; }
	        .card-container .card .back > a > i {
	          display: block; }
	    .card-container .card.card-red .front {
	      color: white;
	      background-color: #ff4a43; }
	    .card-container .card.card-red .back {
	      color: white;
	      background-color: #ff4a43 !important; }
	    .card-container .card.card-cyan .front {
	      color: white;
	      background-color: #22beef; }
	    .card-container .card.card-cyan .back {
	      color: white; 
	      background-color: #22beef !important; }
	    .card-container .card.card-green .front {
	      color: white;
	      background-color: #a2d200; }
	    .card-container .card.card-green .back {
	      color: white;
	      background-color: #a2d200 !important; }
	    .card-container .card.card-orange .front {
	      color: white;
	      background-color: #ffc100; }
	    .card-container .card.card-orange .back {
	      color: white;
	      background-color: #ffc100 !important; }
	    .card-container .card.card-amethyst .front {
	      color: white;
	      background-color: #cd97eb; }
	    .card-container .card.card-amethyst .back {
	      color: white;
	      background-color: #cd97eb !important; }
	    .card-container .card.card-greensea .front {
	      color: white;
	      background-color: #16a085; }
	    .card-container .card.card-greensea .back {
	      color: white;
	      background-color: #16a085 !important; }
	    .card-container .card.card-drank .front {
	      color: white;
	      background-color: #a40778; }
	    .card-container .card.card-drank .back {
	      color: white;
	      background-color: #a40778 !important; }
	    .card-container .card.card-dutch .front {
	      color: white;
	      background-color: #1693a5; }
	    .card-container .card.card-dutch .back {
	      color: white;
	      background-color: #1693a5 !important; }
	    .card-container .card.card-hotpink .front {
	      color: white;
	      background-color: #ff0066; }
	    .card-container .card.card-hotpink .back {
	      color: white;
	      background-color: #ff0066 !important; }
	    .card-container .card.card-redbrown .front {
	      color: white;
	      background-color: #d9544f; }
	    .card-container .card.card-redbrown .back {
	      color: white; 
	      background-color: #d9544f !important; }
	    .card-container .card.card-slategray .front {
	      color: white;
	      background-color: #3f4e62; }
	    .card-container .card.card-slategray .back {
	      color: white;
	      background-color: #3f4e62 !important; }
	    .card-container .card.card-blue .front {
	      color: white;
	      background-color: #418bca; }
	    .card-container .card.card-blue .back {
	      color: white; 
	      background-color: #418bca !important; }
	    .card-container .card.card-translucent .front {
	      color: white;
	      background-color: rgba(0, 0, 0, 0.2); }
	    .card-container .card.card-translucent .back {
	      color: white; 
	      background-color: rgba(0, 0, 0, 0.2) !important; }
	/************* CARDS END *************/

	/***********************************/
	/************* BADGES **************/
	/***********************************/
	.badge {
	  font-size: 18px;
	  font-weight: 400;
	  color: white;
	  padding: 3px 5px;
	  margin: 0 2px;
	  -webkit-border-radius: 20px;
	  -moz-border-radius: 20px;
	  -ms-border-radius: 20px;
	  -o-border-radius: 20px;
	  border-radius: 20px; 
	  }
	  .badge.badge-transparent-black {
	    background-color: rgba(0, 0, 0, 0.25); }
	/************* BADGES END **************/
	
  /************* 对.tile-header的补充 **************/
  body #content .tile .tile-header {
	border-bottom: 1px solid rgba(255, 255, 255, 0.2);
	background-color: rgba(0, 0, 0, 0.2) !important;}
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
	              <strong>年终决算流程</strong> // The Flow Of Year-end
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
        <div id="content" class="col-md-12">
          
          <!-- page header -->
          <div class="pageheader">
          </div>
          <!-- /page header -->
          
          <!-- content main container -->
          <div class="main">
          
			<!-- row -->
            <div id="row"  class="row">
              <!-- js添加row -->
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
    
    <script src="<%=basePath%>/assets/js/vendor/jgrowl/jquery.jgrowl.min.js"></script>
    <script src="<%=basePath%>/assets/js/vendor/typeahead/typeahead.min.js"></script>
    <script src="<%=basePath%>/assets/js/vendor/momentjs/moment-with-langs.min.js"></script>
    <script src="<%=basePath%>/assets/js/vendor/datepicker/bootstrap-datetimepicker.min.js"></script>
    <script src="<%=basePath%>/assets/js/vendor/chosen/chosen.jquery.min.js"></script>
    <script src="<%=basePath%>/assets/js/vendor/no-ui-slider/jquery.nouislider.min.js"></script>
    <script src="<%=basePath%>/assets/js/vendor/tabdrop/bootstrap-tabdrop.min.js"></script>
    
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
					data : 'flow_id='+flow_id+'&time_mode=datetime', //发给servlet的数据 
					async: false,//设置为同步，以免之后的JS执行异常
					success : function(json) {//如果调用servlet成功 
						//alert(json.username+'\n'+json.password); //把php中的返回值（json.username）给 alert出来 
						
						//只有json数据有变化时，才刷新流程列表
						//alert(JSON.stringify(json) != lastFlowJson)
						if(JSON.stringify(json) != lastFlowJson){
							//首先清空row
							$("#row").html("");
							//调用流程展现构造方法
							flowInit(json);
						}
						//把本次查询的json转成字符串放入lastFlowJson，供下次比对
						lastFlowJson = JSON.stringify(json);
					}
				});
	}
		
	//流程状态map，保存最近一次刷新获得的任务状态
	var lastStatMap = {};
	
	//状态中文转换map
	var statContentMap = {};
	statContentMap["0"] = "待执行";
	statContentMap["1"] = "执行中";
	statContentMap["2"] = "异    常";
	statContentMap["3"] = "失    败";
	statContentMap["4"] = "已完成";
	statContentMap["-1"] = "未    知";
	
	//状态对应的颜色样式
	var statColorMap = {};
	statColorMap["0"] = "card-blue";		//待执行
	statColorMap["1"] = "card-orange";		//执行中
	statColorMap["2"] = "card-red";			//异常
	statColorMap["3"] = "card-slategray";	//失败
	statColorMap["4"] = "card-greensea";	//已完成
	statColorMap["-1"] = "card-translucent";	//未知
	
	//状态对应的图标样式
	var statIconMap = {};
	statIconMap["0"] = "fa-clock-o";		//待执行
	statIconMap["1"] = "fa-spinner";		//执行中
	statIconMap["2"] = "fa-warning";			//异常
	statIconMap["3"] = "fa-close";	//失败
	statIconMap["4"] = "fa-check";	//已完成
	statIconMap["-1"] = "fa-question";	//未知
	
	//构造卡式流程
	function flowInit(json) {
		var jsonData = eval(json);//接收到的数据转化为JQuery对象，由JQuery为我们处理
		//alert(JSON.stringify(jsonData))
		$.each(jsonData, function(index, objVal) { //遍历对象数组，index是数组的索引号，objVal是遍历的一个对象。  
					//val["属性"]可取到对应的属性值。
			//如果不存在上级任务，则为一级任务 ，则在main中增加一行(一级任务加在tile-head里，空出tile-body)
			if(objVal.PARENT_TASK_ID == undefined){
				var row = '<div class="col-md-12">' +
							  '<section class="tile color transparent-black rounded-corners">' +
								'<div class="tile-header">' +
								  '<h1>'+
									  '<span class="badge badge-transparent-black">'+objVal.TASK_ID+'</span>' + '&nbsp' + objVal.TASK_NAME + '&nbsp;' +
								  '</h1>' +
								  '<span style="float:right; padding-bottom:0px;">'+objVal.TASK_BEGIN_TIME_PLAN + '&nbsp;-&nbsp;' + objVal.TASK_END_TIME_PLAN +'</span>'+
								'</div>' +
								'<div class="tile-body">' +
								  '<div id="row-cards_'+objVal.TASK_ID+'" class="row cards">' +
								  '</div>' +
								'</div>' +
							  '</section>' +
						  '</div>';
				$(row).appendTo($("#row"));
				
				//如果该任务还有下级任务
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
					
					var card = "";
					$.each(objValChild, function(index1,objVal1) { //遍历对象数组，index是数组的索引号，objVal是遍历的一个对象。
						
						//将任务状态转换成中文
						var stat = statContentMap[objVal1.TASK_STAT];
						var statIcon = statIconMap[objVal1.TASK_STAT];
					  
						//构造tile-body
						card = '<div class="card-container col-lg-3 col-sm-3 col-xs-12">' +
								  '<div id="card_'+objVal1.TASK_ID+'" class="card '+statColorMap[objVal1.TASK_STAT]+' hover">' +
									'<div class="front" id="card_front_1-1">' +
										  '<div class="title">'+
										  	'<span class="badge badge-transparent-black">'+objVal1.TASK_ID+'</span>' + '&nbsp;'+objVal1.HEADER_NAME+
										  	'<span><i id="card_front_icon_'+objVal1.TASK_ID+'" class="fa '+statIcon+' fa-1x" style="float: right;"></i></span>'+
										  '</div>' +
										  '<h4 style="margin:5px;">'+objVal1.TASK_NAME+'</h4>' +
									'</div>' +
									'<div class="back">' +
									  '<i id="card_back_icon_'+objVal1.TASK_ID+'" class="fa '+statIcon+' fa-5x"></i>' +
									'</div>' +
								  '</div>' +
								'</div>';
						$(card).appendTo($("#row-cards_"+objVal1.PARENT_TASK_ID));
						
						//如果状态数组中已有该任务，则将状态取出做比对，状态不同的，卡片翻转
						//如果没有，则不比对，直接将新状态置入状态数组中
						if(objVal1.TASK_ID in lastStatMap){
							var oldStat = lastStatMap[objVal1.TASK_ID];
							if(oldStat != objVal1.TASK_STAT){
								changeStat(objVal1);
							}
						}
						//将新的任务状态放入状态数组，供下次刷新时比对
						lastStatMap[objVal1.TASK_ID] = objVal1.TASK_STAT;
					});
				}
			}
			
		});
		
				
		//为双面卡牌增加翻转方法，不可加在document.ready中
		$('.card.hover').hover(function(){
          $(this).addClass('flip');
        },function(){
          $(this).removeClass('flip');
        });
	}
	
	//状态不同时，卡片翻转并改色，入参为遍历时的task对象
	function changeStat(objVal_Changed){
		//翻转卡片
		setTimeout(function(){$("#card_"+objVal_Changed.TASK_ID).addClass('flip');},1);
		
		//卡片改颜色
		setTimeout(function(){
						$("#card_"+objVal_Changed.TASK_ID).removeClass('card-red');
						$("#card_"+objVal_Changed.TASK_ID).removeClass('card-cyan');
						$("#card_"+objVal_Changed.TASK_ID).removeClass('card-green');
						$("#card_"+objVal_Changed.TASK_ID).removeClass('card-orange');
						$("#card_"+objVal_Changed.TASK_ID).removeClass('card-amethyst');
						$("#card_"+objVal_Changed.TASK_ID).removeClass('card-greensea');
						$("#card_"+objVal_Changed.TASK_ID).removeClass('card-drank');
						$("#card_"+objVal_Changed.TASK_ID).removeClass('card-dutch');
						$("#card_"+objVal_Changed.TASK_ID).removeClass('card-redbrown');
						$("#card_"+objVal_Changed.TASK_ID).removeClass('card-hotpink');
						$("#card_"+objVal_Changed.TASK_ID).removeClass('card-slategray');
						$("#card_"+objVal_Changed.TASK_ID).removeClass('card-blue');
						$("#card_"+objVal_Changed.TASK_ID).addClass(statColorMap[objVal_Changed.TASK_STAT]);
					},200);
					
		//2秒后再翻过来
		setTimeout(function(){$("#card_"+objVal_Changed.TASK_ID).removeClass('flip');},2500);
		
	}
	
	</script>
    
    <form action="action.do" method="POST">
    <!-- 隐藏参数 -->
    <input type="hidden" id="flow_id" name="flow_id" value="${flow_id }" />
    <input type="hidden" id="actionName" name="actionName" value="${actionName }" />
    </form>
  </body>
</html>
      
