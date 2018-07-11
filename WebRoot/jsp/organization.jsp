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
    <title>DCSS 1.0 - Organization</title>
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
              <a id="sidebar_control" href="#">
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
	              <strong>人员组织架构</strong> // Organization
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
          
          	 
            <div class="row">
              <div class="col-sm-6">
                <section class="tile color transparent-black">
                  <div class="tile-header">
                    <h1><strong>同城灾备切换工作领导小组</strong></h1>
                  </div>

                  <div class="tile-body nopadding">
                    
                    <table class="table table-condensed-max">
                      <thead>
                        <tr>
                          <th style="width:5%; align:left;"></th>
                          <th style="width:20%; align:left;"><h4><strong>组长</strong></h4></th>
                          <th style="width:75%; align:center;"><h4><strong>陈新民</strong></h4></th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td></td>
                          <td style="align:left;"><h4><strong>副组长</strong></h3></td>
                          <td style="align:left;"><h4><strong>朱永彤、白俊伟</strong></h3></td>
                        </tr>
                      </tbody>
                      <tbody>
                        <tr>
                          <td></td>
                          <td style="align:left;"><h4><strong>成员</strong></h3></td>
                          <td style="align:left;"><h4><strong>孙正柏、阮绪洲、李玲、雷丰新、丁锐、詹天乐、徐欣、严骏</strong></h3></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </section>
              </div>
            </div>
            
            <div class="row">
              <div class="col-sm-6">
                <section class="tile color transparent-black">
                  <div class="tile-header">
                    <h1><strong>演练指挥小组</strong></h1>
                  </div>

                  <div class="tile-body nopadding">
                    
                    <table class="table table-condensed-max">
                      <thead>
                        <tr>
                          <th style="width:5%; align:left;"></th>
                          <th style="width:20%; align:left;"><h4><strong>组长</strong></h4></th>
                          <th style="width:75%; align:center;"><h4><strong>朱永彤</strong></h4></th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td></td>
                          <td style="align:left;"><h4><strong>副组长</strong></h3></td>
                          <td style="align:left;"><h4><strong>李玲、丁锐、严骏</strong></h3></td>
                        </tr>
                      </tbody>
                      <tbody>
                        <tr>
                          <td></td>
                          <td style="align:left;"><h4><strong>成员</strong></h3></td>
                          <td style="align:left;"><h4><strong>刘江娇、贾凯、沈常青、宫丽华、史焕伟、韩震宇、陈育新、刘行侃、吴清平、尹国钢、汪颖</strong></h3></td>
                        </tr>
                      </tbody>
                    </table>

                  </div>
                </section>
              </div>
            </div>
 			
            <!-- row -->
            <div class="row">
            
              <!-- col 3 -->
              <div class="col-sm-3">

                <!-- tile -->
                <section id="section_1" class="tile color transparent-black"></section>
                <!-- /tile -->
                
                <!-- tile -->
                <section id="section_5" class="tile color transparent-black"></section>
                <!-- /tile -->
                
                <!-- tile -->
                <section id="section_9" class="tile color transparent-black"></section>
                <!-- /tile -->
                
                <!-- tile -->
                <section id="section_13" class="tile color transparent-black"></section>
                <!-- /tile -->
                
				<!-- tile -->
                <section id="section_17" class="tile color transparent-black"></section>
                <!-- /tile -->
                
                <!-- tile -->
                <section id="section_21" class="tile color transparent-black"></section>
                <!-- /tile -->
                
                <!-- tile -->
                <section id="section_25" class="tile color transparent-black"></section>
                <!-- /tile -->
			  </div>
              <!-- /col 3 -->
              
              
              <!-- col 3 -->
              <div class="col-sm-3">

                <!-- tile -->
                <section id="section_2" class="tile color transparent-black"></section>
                <!-- /tile -->
                
                <!-- tile -->
                <section id="section_6" class="tile color transparent-black"></section>
                <!-- /tile -->
                
				<!-- tile -->
                <section id="section_10" class="tile color transparent-black"></section>
                <!-- /tile -->
                
                <!-- tile -->
                <section id="section_14" class="tile color transparent-black"></section>
                <!-- /tile -->
                
                <!-- tile -->
                <section id="section_18" class="tile color transparent-black"></section>
                <!-- /tile -->
                
                <!-- tile -->
                <section id="section_22" class="tile color transparent-black"></section>
                <!-- /tile -->
                
                <!-- tile -->
                <section id="section_26" class="tile color transparent-black"></section>
                <!-- /tile -->
			  </div>
              <!-- /col 3 -->
              
              <!-- col 3 -->
              <div class="col-sm-3">

                <!-- tile -->
                <section id="section_3" class="tile color transparent-black"></section>
                <!-- /tile -->
                
                <!-- tile -->
                <section id="section_7" class="tile color transparent-black"></section>
                <!-- /tile -->
                
                <!-- tile -->
                <section id="section_11" class="tile color transparent-black"></section>
				<!-- /tile -->
				
				<!-- tile -->
                <section id="section_15" class="tile color transparent-black"></section>
				<!-- /tile -->
				
				<!-- tile -->
                <section id="section_19" class="tile color transparent-black"></section>
				<!-- /tile -->
				
				<!-- tile -->
                <section id="section_23" class="tile color transparent-black"></section>
				<!-- /tile -->
				
				<!-- tile -->
                <section id="section_27" class="tile color transparent-black"></section>
                <!-- /tile -->
			  </div>
              <!-- /col 3 -->
              
              
              <!-- col 3 -->
              <div class="col-sm-3">

                <!-- tile -->
                <section id="section_4" class="tile color transparent-black"></section>
                <!-- /tile -->
                
                <!-- tile -->
                <section id="section_8" class="tile color transparent-black"></section>
                <!-- /tile -->
                
                <!-- tile -->
                <section id="section_12" class="tile color transparent-black"></section>
                <!-- /tile -->

				<!-- tile -->
                <section id="section_16" class="tile color transparent-black"></section>
                <!-- /tile -->
                
                <!-- tile -->
                <section id="section_20" class="tile color transparent-black"></section>
                <!-- /tile -->
                
                <!-- tile -->
                <section id="section_24" class="tile color transparent-black"></section>
				<!-- /tile -->
				
				<!-- tile -->
                <section id="section_28" class="tile color transparent-black"></section>
                <!-- /tile -->
			  </div>
              <!-- /col 3 -->
              
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

    <script src="<%=basePath%>/assets/js/vendor/jgrowl/jquery.jgrowl.min.js"></script>
    <script src="<%=basePath%>/assets/js/vendor/typeahead/typeahead.min.js"></script>
    <script src="<%=basePath%>/assets/js/vendor/momentjs/moment-with-langs.min.js"></script>
    <script src="<%=basePath%>/assets/js/vendor/datepicker/bootstrap-datetimepicker.min.js"></script>
    <script src="<%=basePath%>/assets/js/vendor/chosen/chosen.jquery.min.js"></script>
    <script src="<%=basePath%>/assets/js/vendor/no-ui-slider/jquery.nouislider.min.js"></script>
    <script src="<%=basePath%>/assets/js/vendor/tabdrop/bootstrap-tabdrop.min.js"></script>

    <script src="<%=basePath%>/assets/js/minimal.min.js"></script>

	<!-- 自定义JS -->
	<script type="text/javascript">
	$(document).ready(function() {//这个就是jQueryready，当所有需要加载的内容加载完后，就会执行，比onload更靠前  
		showMenu("flowMenu");	//生成菜单
		getTeam();
	});	
	
	//获取小组成员，并将其分到预定的7个小组中
	function getTeam(){
		var flow_id = $("#flow_id").val();
		//alert(FLOW_ID);
		

		$.ajax( { //一个Ajax过程 
					type : "post", //以post方式与后台沟通 
					url : "<%=basePath%>getTeamers.do", //与此处理该请求的servlet沟通 
					async:false,	//改成同步，使后面的JS在AJAX完成返回后才执行，以防需要用ajax返回值时取不到
					dataType : 'json',//从servlet返回的值以 JSON方式 解释 
					data : 'FLOW_ID='+flow_id, //发给servlet的数据 
					success : function(json) {//如果调用servlet成功 
						//alert(json.username+'\n'+json.password); //把php中的返回值（json.username）给 alert出来 
						//调用流程展现构造方法
						//alert(JSON.stringify(json));
						var jsonData = eval(json);//接收到的数据转化为JQuery对象，由JQuery为我们处理
						if(!jQuery.isEmptyObject(jsonData)){
							
							
							//每个组依次循环
							$.each(jsonData, function(index, objVal) { //遍历对象数组，index是数组的索引号，objVal是遍历的一个对象。  
										//val["属性"]可取到对应的属性值。  
								//清空对应section
								$('#section_'+objVal.TEAM_INDEX).html('');
								
								//构造tile-header
								var tile_header = '<div class="tile-header">'+
	                    						  	'<h2><strong>'+objVal.TEAM_NAME+'</strong></h2>'+	//展示组名
	                  							  '</div>';
                  				
                  				//构造tile-body，用于展示成员用户信息
					        	var tile_body ='<div class="tile-body">'+
						        	             '<div class="panel-group accordion" id="multi-accordion">';
								
                  				//判断该TEAM下有多少组员用户，然后循环组员用户信息，增加在后面
								if(objVal.USER != undefined){
									var objUSER = objVal.USER;
									//alert(JSON.stringify(objUSER));
									//判断是否"["开头，可恶的JSON bug
									var test = JSON.stringify(objUSER).indexOf('[');
									//alert(test);
									if(test!=0){//开头不是"[",就需加上{"USER":}
										objUSER = $.parseJSON('{"USER":'+JSON.stringify(objUSER)+'}');
									} //否则无需更改
									//alert(JSON.stringify(objUSER));
									//alert(objUSER.USER_NAME)
									
									var objUSERData = eval(objUSER);	//转成Jquery对象
									$.each(objUSERData, function(index1, objVal1) {
										//在tile-body中添加  USER
										 tile_body = tile_body + '<div class="panel panel-dutch">'+
		                        								   '<div class="panel-heading">'+
		                          								     '<h3 class="panel-title">'+
		                            								   '<a data-toggle="collapse" href="#multicollapse'+objVal.TEAM_ID+'_'+objVal1.USER_ID+'">'+
		                              								     '<strong>'+objVal1.USER_NAME+'&nbsp;'+objVal1.USER_MOBILE+'</strong>'+
		                           									   '</a>'+
		                   											 '</h3>'+
		                 										   '</div>'+
	                      										   '<div id="multicollapse'+objVal.TEAM_ID+'_'+objVal1.USER_ID+'" class="panel-collapse collapse">'+
		                          								     '<div class="panel-body">'+
		                          								       '<i class="fa fa-users"></i>'+'&nbsp;'+objVal1.USER_DEPART+
		                          								       '&nbsp;&nbsp;'+
		                          								       '<i class="fa fa-user"></i>'+'&nbsp;'+objVal1.USER_ID+
		                          								       '<br/>'+
		                  										       '<i class="fa fa-phone"></i>'+'&nbsp;'+objVal1.USER_TELEPHONE+
		                  										     '</div>'+
		                  										   '</div>'+
		                  										 '</div>';
		                  										   
		                  			});
								}
								//alert(tile_body)
								
								tile_body = tile_body+'</div></div>';
								
								//在section中增加tile-header
	                  			$(tile_header).appendTo($("#section_"+objVal.TEAM_INDEX));
								
								//在section中增加tile-body
	                  			$(tile_body).appendTo($("#section_"+objVal.TEAM_INDEX));

							});
						}
					}
			});
	}
	</script>
	
    <script>
    $(function(){

      // Initialize card flip
      $('.card.hover').hover(function(){
        $(this).addClass('flip');
      },function(){
        $(this).removeClass('flip');
      });

      //show tooltips
      $('#topTooltip, #rightTooltip, #bottomTooltip, #leftTooltip').tooltip();

      //jGrowl notifications
      $("#defaultGrowl").click(function() {
        $.jGrowl("Hello world!");
      });

      $("#stickyGrowl").click(function() {
        $.jGrowl("Stick this!", { sticky: true });
      });

      $("#headerGrowl").click(function() {
        $.jGrowl("A message with a header", { header: 'Important' });
      });

      $("#longerGrowl").click(function() {
        $.jGrowl("A message that will live a little longer.", { life: 10000 });
      });

      $("#specialGrowl").click(function() {
        $.jGrowl("A message with a beforeClose callback and a different opening animation.", {
          beforeClose: function(e,m) {
            alert('About to close this notification!');
          },
          animateOpen: {
            height: 'show'
          }
        });
      });

      // Initialize tabDrop
      $('.tabdrop').tabdrop({text: '<i class="fa fa-th-list"></i>'});

      //initialize typeahead
      $('#typeahead').typeahead({
        name: 'States',
        local: ["Alabama","Alaska","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","Florida","Georgia","Hawaii","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland","Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Dakota","North Carolina","Ohio","Oklahoma","Oregon","Pennsylvania","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virginia","Washington","West Virginia","Wisconsin","Wyoming"]
      });

      //initialize datepicker
      $('#datepicker').datetimepicker({
        icons: {
          time: "fa fa-clock-o",
          date: "fa fa-calendar",
          up: "fa fa-arrow-up",
          down: "fa fa-arrow-down"
        }
      });

      $("#datepicker").on("dp.show",function (e) {
        var newtop = $('.bootstrap-datetimepicker-widget').position().top - 45;      
        $('.bootstrap-datetimepicker-widget').css('top', newtop + 'px');
      });

      //initialize chosen
      $(".chosen-select").chosen({disable_search_threshold: 10});

      //initialize range slider
      $('#rangeSlider').noUiSlider({
        range: [10,40],
        start: [20,30],
        connect: true
      });

      //initialize slider
      $('#slider').noUiSlider({
        range: [0,100],
        start: [20],
        handles: 1
      });

      //initialize color picker sliders
      $('.slider').noUiSlider({
         range: [0,255]
        ,start: 127
        ,handles: 1
        ,connect: "lower"
        ,orientation: "vertical"
        ,serialization: {
          resolution: 1
        }
        ,slide: function(){

          var color = 'rgb(' + $("#red").val()
             + ',' + $("#green").val()
             + ',' + $("#blue").val()
             + ')';

          $(".result").css({
             background: color
            ,color: color
          });
        }
      });

      //set width for label on Inline Select
      var setLabelWidth = function() {
        var parentWidth = $('.inlineSelect.inline').width();
        var childrenLength = $('.inlineSelect.inline li').length;

        $('.inlineSelect.inline li label, .inlineSelect.inline li.title').css('width', ((parentWidth / childrenLength)) + 'px');
      }

      setLabelWidth();

      $(window).resize(function() {
        setLabelWidth();
      });

      //accordion class active toggling
      $('#accordion .panel-heading .panel-title a').click(function() {

        var $previous = $( '#accordion .panel.active' );

        $previous.removeClass('active');
        $(this).parent().parent().parent().stop().addClass('active');

        if($(this).parent().parent().parent().hasClass('active')) {
          $previous.removeClass('active');
        }
      });

      //multi-accordion class active toggling
      $('#multi-accordion .panel-heading .panel-title a').click(function() {
        $(this).parent().parent().parent().stop().toggleClass('active');
      });
      
    })
      
    </script>
    
    <form action="action.do" method="POST">
    <!-- 隐藏参数 -->
    <input type="hidden" id="flow_id" name="flow_id" value="${flow_id }" />
    <input type="hidden" id="actionName" name="actionName" value="${actionName }" />
    </form>
  </body>
</html>
      
