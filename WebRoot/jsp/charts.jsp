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
	              <strong>仪表盘</strong> // Charts
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


              <!-- col 4 -->
              <div class="col-sm-5">
                <!-- tile -->
                <section class="tile color transparent-white">

                  <!-- tile header -->
                  <div class="tile-header">
                    <h2>任务完成度</h2>
                  </div>
                  <!-- /tile header -->

                  <!-- tile body -->
                  <div class="tile-body"  id="pie-chart-div">
                    
                    <table id="pie-chart" class="flot-chart" data-type="pie" data-inner-radius="0.4" data-pie-label="show" data-width="100%" data-height="250px" data-tool-tip="false">
                      <thead>
                        <tr>
                          <th></th>
                          <th style="color : #a2d200;">Sales this month</th>
                          <th style="color : #ffc100;">New Orders</th>                                       
                          <th style="color : #ff4a43;">New Users</th>
                          <th style="color : #22beef;">Visits this month</th>                                        
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th></th>
                          <td>20</td>
                          <td>50</td>
                          <td>10</td>
                          <td>20</td>
                        </tr>
                      </tbody>
                    </table>

                  </div>
                  <!-- /tile body -->

                </section>
                <!-- /tile -->

              </div>
              <!-- /col 4 -->


              <!-- col 8 -->
              <div class="col-sm-7">

                <!-- tile -->
                <section class="tile color transparent-black">

                  <!-- tile header -->
                  <div class="tile-header">
                    <h2>任务耗时分析</h2>
                  </div>
                  <!-- /tile header -->

                  <!-- tile body -->
                  <div class="tile-body" id="line-chart-div">
                    <table id="line-chart" class="flot-chart" data-type="lines" data-width="100%" data-height="250px" data-font-color="rgba(255,255,255,.8)" data-tick-color="rgba(255,255,255,.3)" data-legend="hidden" data-tool-tip="show">
                      <thead>
                        <tr>
                          <th></th>
                          <th style="color : #cd97eb;">Sales</th>
                          <th style="color : #a2d200;">Orders</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th>JAN</th>
                          <td>254</td>
                          <td>25</td>
                        </tr>
                        <tr>
                          <th>FEB</th>
                          <td>584</td>
                          <td>345</td>
                        </tr>
                        <tr>
                          <th>MAR</th>
                          <td>85</td>
                          <td>120</td>
                        </tr>
                        <tr>
                          <th>APR</th>
                          <td>428</td>
                          <td>654</td>
                        </tr>
                        <tr>
                          <th>MAY</th>
                          <td>512</td>
                          <td>971</td>
                        </tr>
                        <tr>
                          <th>JUN</th>
                          <td>0</td>
                          <td>0</td>
                        </tr>
                        <tr>
                          <th>JUL</th>
                          <td>212</td>
                          <td>356</td>
                        </tr>
                        <tr>
                          <th>AUG</th>
                          <td>684</td>
                          <td>128</td>
                        </tr>
                        <tr>
                          <th>SEP</th>
                          <td>692</td>
                          <td>163</td>
                        </tr>
                        <tr>
                          <th>OCT</th>
                          <td>987</td>
                          <td>354</td>
                        </tr>
                        <tr>
                          <th>NOV</th>
                          <td>1865</td>
                          <td>985</td>
                        </tr>
                        <tr>
                          <th>DEC</th>
                          <td>2158</td>
                          <td>1214</td>
                        </tr>
                      </tbody>
                    </table>

                  </div>
                  <!-- /tile body -->

              </div>
              <!-- /col 8 -->



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
		taskPercent();
		taskExpend();
	}
	
	//查询百分比时所用的上一次查询结果
	var lastJson_Percent;
	
	//查询任务完成百分比
	function taskPercent(){
		var flow_id = $("#flow_id").val();
		$.ajax( { //一个Ajax过程 
					type : "post", //以post方式与后台沟通 
					url : "<%=basePath%>getTaskPercent.do", //与此处理该请求的servlet沟通 
					dataType : 'json',//从servlet返回的值以 JSON方式 解释 
					data : 'flow_id='+flow_id, //发给servlet的数据 
					async: false,//设置为同步，以免之后的JS执行异常
					success : function(json) {//如果调用servlet成功 
						//alert(json.username+'\n'+json.password); //把php中的返回值（json.username）给 alert出来 
						
						//只有json数据有变化时，才刷新流程列表
						if(JSON.stringify(json) != lastJson_Percent){
							//首先清空pie-chart-div
							$("#pie-chart-div").html("");
							
							//将查得的任务完成百分比填入表格
							//table里的html
							var table = '<table id="pie-chart" class="flot-chart" data-type="pie" data-inner-radius="0.4" data-pie-label="show" data-width="100%" data-height="250px" data-tool-tip="false">'+
										  '<thead>'+
                        				  	'<tr>'+
                          					  '<th></th>';
                          	//插入颜色、状态文字
							$.each(json, function(index, objVal) { //遍历对象数组，index是数组的索引号，objVal是遍历的一个对象。    		
								//在tr中添加th
								var stat = objVal.TASK_STAT + "";	//转成String
								// 0：待执行		1：执行中	2：异常		3：失败		4：已完成		-1：未知
								if(stat==0){	//待执行
									table = table+'<th style="color : #418bca;">待执行</th>';
								}else if(stat=="1"){
									table = table+'<th style="color : #ffc100;">执行中</th>';
								}else if(stat=="2"){
									table = table+'<th style="color : #ff4a43;">异常</th>';
								}else if(stat=="3"){
									table = table+'<th style="color : #3f4e62;">失败</th>';
								}else if(stat=="4"){
									table = table+'<th style="color : #16a085;">已完成</th>';
								}else{
									table = table+'<th style="color : rgba(0, 0, 0, 0.2);">未知</th>';
								}
							});
							table = table+'</tr>'+
                      					'</thead>'+
                      					'<tbody>'+
                        				  '<tr>'+
                          					'<th></th>';
                          	//插入百分比
                          	$.each(json, function(index, objVal) { //遍历对象数组，index是数组的索引号，objVal是遍历的一个对象。    		
								//在tr中添加th
								table = table+'<td>'+objVal.PERCENT+'</td>'
							});
							table = table+'</tr>'+
                      					'</tbody>'+
                      				  '</table>';
                      					
                      		//更新pie-chart数据
                      		$("#pie-chart-div").html(table);
						}
						//把本次查询的json转成字符串放入lastFlowJson，供下次比对
						lastJson_Percent = JSON.stringify(json);
					}
				});
		makeCharts();//构造图表
	}
	
	//查看任务耗时
	//查询百分比时所用的上一次查询结果
	var lastJson_Extend;
	
	//查询任务耗时
	function taskExpend(){
		var flow_id = $("#flow_id").val();
		$.ajax( { //一个Ajax过程 
					type : "post", //以post方式与后台沟通 
					url : "<%=basePath%>getTaskExpend.do", //与此处理该请求的servlet沟通 
					dataType : 'json',//从servlet返回的值以 JSON方式 解释 
					data : 'flow_id='+flow_id, //发给servlet的数据 
					async: false,//设置为同步，以免之后的JS执行异常
					success : function(json) {//如果调用servlet成功 
						//alert(json.username+'\n'+json.password); //把php中的返回值（json.username）给 alert出来 
						
						//只有json数据有变化时，才刷新流程列表
						if(JSON.stringify(json) != lastJson_Extend){
							//首先清空line-chart-div
							$("#line-chart-div").html("");
							
							//将查得的任务耗时填入表格
							//table里的html
							var table = '<table id="line-chart" class="flot-chart" data-type="lines" data-width="100%" data-height="250px" data-font-color="rgba(255,255,255,.8)" data-tick-color="rgba(255,255,255,.3)" data-legend="hidden" data-tool-tip="show">'+
										  '<thead>'+
										    '<tr>'+
                          					   '<th></th>'+
                          					   '<th style="color : #cd97eb;">计划</th>'+
                          					   '<th style="color : #a2d200;">实际</th>'+
                        					'</tr>'+
                      					'</thead>'+
                      					'<tbody>';
                          					
                          	//插入耗时
                          	$.each(json, function(index, objVal) { //遍历对象数组，index是数组的索引号，objVal是遍历的一个对象。    		
								//在tr中添加td
								table = table+'<tr>'+
												'<th>'+objVal.TASK_ID+'</th>'+
												'<td>'+objVal.EXPENDPLAN+'</td>'+
												'<td>'+objVal.EXPENDREAL+'</td>'+
											  '</tr>';
							});
							
							table = table+'</tbody>'+
                      				  '</table>';
                      					
                      		//更新line-chart-div数据
                      		$("#line-chart-div").html(table);
						}
						//把本次查询的json转成字符串放入lastJson_Extend，供下次比对
						lastJson_Extend = JSON.stringify(json);
					}
				});
		makeCharts();//构造图表
	}
	</script>

	<!-- 图表JS 根据section中 -->
    <script>
    function makeCharts(){
      // Line Chart
      var bars = false;
      var lines = true;
      var pie = false;

      var initializeFlot = function(){
        
        var el = $('table.flot-chart');

        el.each(function(){
          var data = $(this).data();
          var colors = [];
          var gridColor = data.tickColor || 'rgba(0,0,0,.1)';

          $(this).find('thead th:not(:first)').each(function() {
            colors.push($(this).css('color'));
          });

          if(data.type){
            bars = data.type.indexOf('bars') != -1;
            lines = data.type.indexOf('lines') != -1;
            pie = data.type.indexOf('pie') != -1;
          }

          $(this).graphTable({
            series: 'columns',
            position: 'replace',
            colors: colors,
            width: data.width,
            height: data.height
          },
          {
            series: { 
              stack: data.stack,
              pie: {
                show: pie,
                innerRadius: data.innerRadius || 0,
                label:{ 
                  show: data.pieLabel=='show' ? true:false
                }
              },
              bars: {
                show: bars,
                barWidth: data.barWidth || 0.5,
                fill: data.fill || 1,
                align: 'center'
              },
              lines: { 
                show: lines,
                fill: 0.1,
                lineWidth: 3
              },
              shadowSize: 0,
              points: {
                radius: 4
              }
            },
            xaxis: {
              mode: 'categories',
              tickLength: 0,
              font :{
                lineHeight: 24,
                weight: '300',
                color: data.fontColor,
                size: 14
              } 
            },
            yaxis: { 
              tickColor: gridColor,
              tickFormatter: function number(x) {  var num; if (x >= 1000) { num=(x/1000)+'k'; }else{ num=x; } return num; },
              max: data.yMax,
              font :{
                lineHeight: 13,
                weight: '300',
                color: data.fontColor
              }
            },  
            grid: { 
              borderWidth: {
                top: 0,
                right: 0,
                bottom: 1,
                left: 1
              },
              borderColor: gridColor,
              margin: 13,
              minBorderMargin:0,              
              labelMargin:20,
              hoverable: true,
              clickable: true,
              mouseActiveRadius:6
            },
            legend: { show: data.legend=='show' ? true:false },
            tooltip: data.toolTip=='show' ? true:false,
            tooltipOpts: { content: (pie ? '%p.0%, %s':'<b>%s</b> :  %y') }
          });
        });
        
      };   

      // Pie Chart custom labels

      $('.custom-labels').each(function () {
        var el= $(this);
        var data = el.data();
        var colors = [];
        var info = [];
        var item = '';

        $(data.targetFlot).find('thead th:not(:first)').each(function() {
          colors.push($(this).css('color'));
          info.push($(this).text());
        });

        for(var i=0;i<info.length;i++){
          item += '<li><span class="badge badge-outline" style="border-color:' + colors[i] + '"></span>' + info[i] + ' ' + '<small>' + $(data.targetFlot).find("tbody td").eq(i).text() + '%' + '</small>' + '</li>';
        }

        el.append('<ul class="nolisttypes chart-legend">'+item+'</ul>');
        
      }); 

      initializeFlot();

    }
    </script>
    
    <form action="action.do" method="POST">
	    <!-- 隐藏参数 -->
	    <input type="hidden" id="flow_id" name="flow_id" value="${flow_id }" />
	    <input type="hidden" id="actionName" name="actionName" value="${actionName }" />
    </form>
  </body>
</html>
      
