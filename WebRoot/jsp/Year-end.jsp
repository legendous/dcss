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
    <title>DCSS 1.0 - Welcome</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

    <!-- Bootstrap -->
    <link href="<%=basePath%>/assets/css/vendor/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath%>/Font-Awesome/css/font-awesome.css" rel="stylesheet">
	<link href="<%=basePath%>/assets/css/minimal.css" rel="stylesheet">
	
	<!-- 自定义 -->
    <link href="<%=basePath%>/MyAssets/css/main.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
	
	<style type="text/css">
	.title {
	  color:#FFFFFF;
	  padding:0px 10px;
	  aligh:left;
	  vertical-align:middle;
	  width:90%;
	  height:40px;
	}
	
	.sign {
	  padding:0px 10px;
	  aligh:right;
	  float:right;
	  vertical-align:middle;
	  width:100px;
	  font: 15px;
	}
	
	html {
	  padding:0;
	}
	
	h1 {
	  font:bold 30px "微软雅黑";
	}
	
	h2 {
	  font:bold 26px "微软雅黑";
	}
	</style>
	
	<!-- 自定义JS -->
	<script type="text/javascript">
	function iFrameHeight() {
	    var ifm= document.getElementById("iframepage");
	    var subWeb = document.frames ? document.frames["iframepage"].document : ifm.contentDocument;
	    if(ifm != null && subWeb != null) {
	        ifm.height = subWeb.body.scrollHeight;
	        alert(ifm.height);
	    }
	}
	</script>
  </head>
  <body class="bg-7" style="height:100%">
  <table border=1 height="100%">
  	<tr>
  	  <td colspan="2">
		<div class="title">
		  <h1><img src="<%=basePath%>/assets/images/hkb-logo.jpg" alt class="logo">2&nbsp;0&nbsp;1&nbsp;5&nbsp;年&nbsp;年&nbsp;终&nbsp;决&nbsp;算 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </h1>
		</div>
		
		<div class="sign">
		  <a href="<%=basePath%>login.jsp">
			<i class="fa fa-play"></i>&nbsp;LOGIN
          </a>
		</div>
  	  </td>
  	</tr>
  	<tr>
  	  <td rowspan="2" width="960px" height="100%">
  	  	<iframe id="iframepage_1" name="iframepage_1" frameBorder=0 scrolling=no width="100%" height="100%"></iframe>
  	  </td>
  	  <td width="960px" height="50%">
  	  	<iframe id="iframepage_2" name="iframepage_2" frameBorder=0 scrolling=no width="100%" height="100%"></iframe>
  	  </td>
  	</tr>
  	<tr>
  	  <td width="960px" height="45%">
  	  	<iframe id="iframepage_3" name="iframepage_3" frameBorder=0 scrolling=no width="100%" height="100%"></iframe>
  	  </td>
  	</tr>
  </table>
  
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="<%=basePath%>/assets/js/jquery.js"></script>
	<script src="<%=basePath%>/MyAssets/js/common.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=basePath%>/assets/js/vendor/bootstrap/bootstrap.min.js"></script>
    <!-- -<script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js?lang=css&skin=sons-of-obsidian"></script>  -->
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/mmenu/js/jquery.mmenu.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/sparkline/jquery.sparkline.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/nicescroll/jquery.nicescroll.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/animate-numbers/jquery.animateNumbers.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/vendor/blockui/jquery.blockUI.js"></script>
	<script src="<%=basePath%>/assets/js/vendor/chosen/chosen.jquery.min.js"></script>
	<script src="<%=basePath%>/assets/js/minimal.min.js"></script>
	
<form id="form" name="form" action="action.do" method="POST">
    <!-- 隐藏参数 -->
    <input type="hidden" id="flow_id" name="flow_id" value="9"/>	<!-- 默认值是多少，新开页面就展现哪个流程 -->
    <input type="hidden" id="actionName" name="actionName" value="flowTable"/>
</form>
    <script type="text/javascript">
    $(document).ready(function() {//这个就是jQueryready，当所有需要加载的内容加载完后，就会执行，比onload更靠前
    	//默认为左边流程任务页、右上人员组织架构，右下仪表盘
    	refreshWelcome('flowCards','flowCards','progress');
	});	
    
    //刷新welcome页面，3个页面都要刷，且不能刷成别的交易
    function refreshWelcome(action_1,action_2,action_3){
    	//左边iframe加载action_1
    	$("#actionName").val(action_1);
	    $("#form").attr("target","iframepage_1");
	    $("#form").submit();
	    
	    //右上iframe加载action_2
    	$("#actionName").val(action_2);
	    $("#form").attr("target","iframepage_2");
	    $("#form").submit();
	    
	    //右下iframe加载action3
    	$("#actionName").val(action_3);
	    $("#form").attr("target","iframepage_3");
	    $("#form").submit();
    }
    </script>
    
  </body>
</html>
      
