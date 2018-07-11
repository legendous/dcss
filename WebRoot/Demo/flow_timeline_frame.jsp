<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <title>Minimal 1.0 - Timeline</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

	<!-- Bootstrap -->
    <link href="<%=basePath%>/assets/css/vendor/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath%>/Font-Awesome/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=basePath%>/assets/css/vendor/animate/animate.css">
    <link type="text/css" rel="stylesheet" media="all" href="<%=basePath%>/assets/js/vendor/mmenu/css/jquery.mmenu.all.css" />
    <link rel="stylesheet" href="<%=basePath%>/assets/js/vendor/videobackground/css/jquery.videobackground.css">
    <link rel="stylesheet" href="<%=basePath%>/assets/css/vendor/bootstrap-checkbox.css">
	<link rel="stylesheet" href="<%=basePath%>/assets/js/vendor/superbox/css/style.css">
    <link rel="stylesheet" href="<%=basePath%>/assets/js/vendor/colorbox/css/colorbox.css">
	<link href="<%=basePath%>/assets/css/minimal.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

  </head>
  <body class="bg-7">
  
	<!-- Wrap all page content here -->
    <div id="wrap">
    
	  <!-- Make page fluid -->
      <div class="row">
        
		<!-- Page content -->
        <div id="content" class="col-md-12">
          
		  <!-- page header -->
          <div class="pageheader">
            <h2><i class="fa fa-clock-o" style="line-height: 48px;padding-left: 0;"></i> 切换时序图 <span>// The Flow Timeline</span></h2>
            <div class="breadcrumbs">
              <ol class="breadcrumb">
                <li>You are here</li>
                <li><a href="index.html">Minimal</a></li>
                <li><a href="#">Example Pages</a></li>
                <li class="active">Timeline</li>
              </ol>
            </div>
		  </div>
          <!-- /page header -->
          
          
          <!-- content main container -->
          <div class="main">        
			<!-- row -->
            <div class="row">
			  <!-- col 12 -->
              <div class="col-md-12 text-center sm-left">
                <h1 class="timeline-heading"><strong>Start</strong></h1>
                <ol class="timeline" id="flow_timeline">
					<!-- 时间轴展示的地方 -->
                </ol>
				<h1 class="timeline-heading"><strong>End</strong></h1>
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
    
    
    <section class="videocontent" id="video"></section>

    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="<%=basePath%>/assets/js/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=basePath%>/assets/js/vendor/bootstrap/bootstrap.min.js"></script>
    <!-- <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js?lang=css&skin=sons-of-obsidian"></script> -->
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/mmenu/js/jquery.mmenu.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/sparkline/jquery.sparkline.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/nicescroll/jquery.nicescroll.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/animate-numbers/jquery.animateNumbers.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/videobackground/jquery.videobackground.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/blockui/jquery.blockUI.js"></script>
	<script src="<%=basePath%>/assets/js/minimal.min.js"></script>
	<script src="<%=basePath%>/MyAssets/js/common.js"></script>

<script type="text/javascript">
	$(document).ready(function() {//这个就是jQueryready，当所有需要加载的内容加载完后，就会执行，比onload更靠前  
		getFlow();
	});

	//获得流程数据;
	function getFlow() {
		$("#flow_timeline").html("");
		$.ajax( { //一个Ajax过程 
					type : "post", //以post方式与后台沟通 
					url : "<%=basePath%>flowShow.do", //与此处理该请求的servlet沟通 
					dataType : 'json',//从servlet返回的值以 JSON方式 解释 
					data : 'username=1', //发给servlet的数据 
					success : function(json) {//如果调用servlet成功 
						//alert(json.username+'\n'+json.password); //把php中的返回值（json.username）给 alert出来 
						//调用流程展现构造方法
						flowInit(json);
					}
				});
	}

	//构造流程时间轴
	function flowInit(json) {
		var jsonData = eval(json);//接收到的数据转化为JQuery对象，由JQuery为我们处理
		$.each(jsonData, function(index, objVal) { //遍历对象数组，index是数组的索引号，objVal是遍历的一个对象。  
					//val["属性"]可取到对应的属性值。  
			//alert(index+"  "+objVal["step-no"]);
			
			//每循环一次，添加一个div
			addLi("flow_timeline", objVal);
			//在div中添加一个table
			//addTable("flowDiv_"+index, index, objVal);
		});
	}
	
	//在parentId父元素中增加id为div_index的div
	function addLi(parentId, objVal){
		
		var li = "<li class='color transparent-black'>"+
                    "<div class='pointer slategray'>"+
                      "<i class='fa fa-compass'></i>"+
                    "</div>"+
                    "<div class='el-container'>"+
                      "<div class='content' id='div_"+objVal.index+"'>"+
                        "<span class='time'><i class='fa fa-clock-o'></i>"+objVal.time+"</span>"+
                        "<h1><strong>"+objVal.index+"&nbsp"+objVal.content+"</strong></h1>"+
                       "</div>"+
                    "</div>"+
                  "</li>";
		$(li).appendTo($("#"+parentId));
		
		//如果存在2级流程，将嵌套再次循环
		if(objVal.step != undefined){
			var objValChild = objVal.step;
			$.each(objValChild, function(index1,objVal1) { //遍历对象数组，index是数组的索引号，objVal是遍历的一个对象。  
				
				//将子步骤加入p中
				var p = objVal1.index+" "+objVal1.time+" "+objVal1.content;
				var trueLength = getTrueLength(p);
				var maxLength = 90;
				if(length<maxLength){
					for(i=0;i<maxLength-length;i++){
						p += " ";
					}	
				}
				p = "<p>"+p+"</p>";
				$(p).appendTo($("#div_"+objVal.index));
			});
		}else{
			var p = "<p>&nbsp;</p>"
			$(p).appendTo($("#div_"+objVal.index));
		}
	}
</script>
  </body>
</html>
