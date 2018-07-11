//editor xuyang
/** 
 * 获取上下文根,返回如 http://localhost:xxx/xxx
 */
var RootPath="";	//上下文根
var strFullPath = window.document.location.href;
var strPath = window.document.location.pathname;
var pos = strFullPath.indexOf(strPath);
var prePath = strFullPath.substring(0, pos);
var postPath = strPath.substring(0, strPath.substr(1).indexOf('/') + 1);
RootPath = prePath + postPath;

//展示流程菜单
function showMenu(menu_id){
	$.ajax( { //一个Ajax过程 
		type : "post", //以post方式与后台沟通 
		url : RootPath+"/getFlowList.do", //与此处理该请求的servlet沟通 
		dataType : 'json',//从servlet返回的值以 JSON方式 解释 
		//async: false,//设置为同步，以免之后的JS执行异常
		success : function(json) {//如果调用servlet成功 
			
			//首先清空tbody
			$("#"+menu_id).html("");
			var menuHTML = '<a href="#" class="dropdown-toggle" data-toggle="dropdown">'+
						     '<i class="fa fa-tachometer"></i> 流程任务 <b class="fa fa-plus dropdown-plus"></b>'+
						   '</a>'+
						   '<ul class="dropdown-menu">';
			//循环构造流程菜单
			$.each(json, function(index, objVal) { //遍历对象数组，index是数组的索引号，objVal是遍历的一个对象。  
				//val["属性"]可取到对应的属性值。  
				menuHTML = menuHTML + 
				 '<li>'+
				   '<a href="#" onclick="changeFlow(\''+objVal.FLOW_ID+'\')">'+
			         '<i class="fa fa-caret-right"></i> '+objVal.FLOW_NAME+
			       '</a>'+
			     '</li>';
				
			});
			menuHTML = menuHTML +'</ul>';
			$("#"+menu_id).html(menuHTML);
		}
	});
}