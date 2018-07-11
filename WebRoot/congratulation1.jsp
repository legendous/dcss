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
  <body class="bg-9" style="height:100%">
  <table height="100%">
  	<tr>
  	  <td width="1920px" height="100%" align="center">
  	  	<img src="<%=basePath%>/MyAssets/images/congratulation1.png">
  	  </td>
  	</tr>
  </table>
  <!-- <div style="margin:0 auto; width:100px; height:100px; "><button type="button" style='font:bold 26px "微软雅黑";' class="btn btn-danger btn-lg margin-bottom-20" onclick="changeAction('7', 'welcome')">&nbsp;&nbsp;切&nbsp;&nbsp;换&nbsp;&nbsp;开&nbsp;&nbsp;始&nbsp;&nbsp;</button></div>  -->
  
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
	
<form id="form" name="form" action="#" method="POST">
    <!-- 隐藏参数 -->
    <input type="hidden" id="flow_id" name="flow_id" value="7"/>	<!-- 默认值是多少，新开页面就展现哪个流程 -->
    <input type="hidden" id="actionName" name="actionName" value="flowTable"/>
</form>
    <script type="text/javascript">

    </script>
    
  </body>
</html>
      
