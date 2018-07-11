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

/**
 * 修改Welcome的input flow_id，然后把3个iframe当前的actionName作为参数，放入welcome页面的refresh方法中
 */
function changeFlow(flow_id){
	if(self.frameElement != null){	//如果在iframe中
		$("#flow_id",parent.document).val(flow_id);
		
		var action_1 = window.parent.document.getElementById("iframepage_1").contentWindow.document.getElementById("actionName").value;
		var action_2 = window.parent.document.getElementById("iframepage_2").contentWindow.document.getElementById("actionName").value;
		var action_3 = window.parent.document.getElementById("iframepage_3").contentWindow.document.getElementById("actionName").value;
		
		window.parent.refreshWelcome(action_1,action_2,action_3);
	}else{	//如果不在iframe中，则自己提交
		$("#flow_id").val(flow_id);
		document.forms[0].submit();
	}
}

/**
 * 点击菜单，更换action
 */
function changeAction(flow_id,actionName){
	$("#flow_id").val(flow_id);
	$("#actionName").val(actionName);
	document.forms[0].submit();
}

//定义任务信息展现延迟时间
var delay = 400;

/**
 * 自动刷新JS
 */
//定义一个定时器
var interval = null;
//定义自动刷新间隔时间
var intervalTime = 3000;	//每隔3秒循环

//修改间隔时间，在自动刷新与不刷新之间切换
function changeInterval(functionName){
	if(interval != null){
		clearInterval(interval);
		interval = null;
		$(".auto-refresh").html("&nbsp;&nbsp;自动刷新"); //auto-refresh样式仅仅用来标记自动刷新，实际没有样式作用
	}else{
		interval = setInterval(functionName, intervalTime);  //每隔3秒循环
		$(".auto-refresh").html("&nbsp;&nbsp;取消刷新");
	}
}


//计算字符长度 汉字算两个
function getTrueLength(str) {  
	if (str == null) return 0;  
	if (typeof str != "string"){  
		str += "";  
	}  
	return str.replace(/[^\x00-\xff]/g,"01").length; 
}


/**
 * 查询过早开始的任务，并高亮其前置任务ID
 */
function tooEarlyTask(){
	var flow_id = $("#flow_id").val();
	var task_id = "";
	$.ajax( { //一个Ajax过程 
		type : "post", //以post方式与后台沟通 
		url : RootPath+"/tooEarlyTask.do", //与此处理该请求的servlet沟通 
		dataType : 'json',//从servlet返回的值以 JSON方式 解释 
		data : 'flow_id='+flow_id, //发给servlet的数据 
		success : function(json) {//如果调用servlet成功 
			//alert(json.username+'\n'+json.password); //把php中的返回值（json.username）给 alert出来 
			var jsonData = eval(json);//接收到的数据转化为JQuery对象，由JQuery为我们处理
			if(jQuery.isEmptyObject(jsonData)){
				//如果无数据 则什么都不做
			}else{
				//循环找到哪些任务是过早开始的
				$.each(jsonData, function(index, objVal) { //遍历对象数组，index是数组的索引号，objVal是遍历的一个对象。  
							//val["属性"]可取到对应的属性值。  
					task_id = objVal.TASK_ID;
					//把对应的前置任务设置为闪烁
					$("#front_task_id_"+task_id).attr("class", "blink");
				});
			}
		}
	});
}

/**
 * 错误/提示，目前先用alert，可优化
 */
function showMsg(msg){
	alert(msg);
}