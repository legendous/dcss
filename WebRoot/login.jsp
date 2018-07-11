<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <title>Minimal 1.0 - Login Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

    <!-- Bootstrap -->
    <link href="<%=basePath%>/assets/css/vendor/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath%>/Font-Awesome/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=basePath%>/assets/css/vendor/bootstrap-checkbox.css">

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
        <div id="content" class="col-md-12 full-page login">


          <div class="inside-block">
            <img src="<%=basePath%>/assets/images/logo-shield.png" alt class="logo">
            <h1><strong>汉口银行</strong> 灾备指挥调度系统</h1>
            <h5>Disaster Recovery Unified Command & Scheduling System</h5>

            <form id="form-signin" class="form-signin" action="login.do">
              <section>
                <div class="input-group">
                  <input type="text" class="form-control" name="user_id" placeholder="Username">
                  <div class="input-group-addon"><i class="fa fa-user"></i></div>
                </div>
                <!-- 密码暂时注释掉
                <div class="input-group">
                  <input type="password" class="form-control" name="" placeholder="Password">
                  <div class="input-group-addon"><i class="fa fa-key"></i></div>
                </div>
                 -->
              </section>
              <section class="controls">
                <div class="checkbox check-transparent">
                  <input type="checkbox" value="1" id="remember" checked>
                  <label for="remember">Remember me</label>
                </div>
                <a href="#">Forget password?</a>
              </section>
              <section class="log-in">
                <button class="btn btn-greensea" onclick="login()">Log In</button>
                <span>or</span>
                <button class="btn btn-slategray">Create an account</button>
              </section>
            </form>
          </div>


        </div>
        <!-- /Page content -->  
      </div>
    </div>
    <!-- Wrap all page content end -->
  </body>
</html>
      
