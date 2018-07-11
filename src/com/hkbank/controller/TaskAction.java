package com.hkbank.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import net.sf.json.JSON;
import net.sf.json.JSONArray;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Controller; 
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping; 
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import ch.qos.logback.classic.Logger;

import com.hkbank.model.User;
import com.hkbank.service.TaskService;

@Controller 
public class TaskAction {
	//被注入的流程服务
	private final TaskService TaskService;
	//log
	private Logger logger = (Logger) LoggerFactory.getLogger(this.getClass().getName());

    @Autowired 
    public TaskAction(TaskService TaskService) { 
        this.TaskService = TaskService; 
    }
    
    /**
     * 获取流程列表
     * @return
     */
    @RequestMapping("/getFlowList.do") 
    public @ResponseBody JSON getFlowList() { 
    	this.logger.info("获取流程列表开始");
    	JSONArray jsonArry = null;
    	try{
	    	List flowList = this.TaskService.getFlowList();
	    	//System.out.println(XmlString);
	    	jsonArry = JSONArray.fromObject(flowList);
	    	this.logger.info("jsonArry"+jsonArry);
    	}catch(Exception e){
    		logger.error("获取流程列表失败");
    		e.printStackTrace();
    	}
    	this.logger.info("获取流程列表完成");
        return jsonArry;
    } 
    
    /**
     * 获取任务列表
     * @return
     */
    @RequestMapping("/getTaskList.do") 
    public @ResponseBody JSON getTaskList(@RequestParam("flow_id") String flow_id
    									,@RequestParam("time_mode") String time_mode) { 
    	this.logger.info("获取任务列表开始");
    	JSON flowJson = null;
    	try{
	    	List taskList = this.TaskService.getTaskList(flow_id, time_mode);
	    	String XmlString = this.TaskService.list2XmlString(taskList);
	    	//System.out.println(XmlString);
	    	flowJson = this.TaskService.XmlString2JSON(XmlString);
    	}catch(Exception e){
    		logger.error("获取任务列表失败");
    		e.printStackTrace();
    	}
    	this.logger.info("获取任务列表完成");
        return flowJson;
    } 
    
    /**
     * 获取某任务的参与者信息
     * @return
     */
    @RequestMapping("/getTaskUsers.do") 
    public @ResponseBody JSON getTaskUsers(@RequestParam("flow_id") String flow_id
    									,@RequestParam("task_id") String task_id) { 
    	this.logger.info("获取任务参与者信息开始");
    	this.logger.info(flow_id + " "+ task_id);
    	JSONArray jsonArry = null;
    	try{
	    	List taskUsersList = this.TaskService.getTaskUsersList(flow_id, task_id);	//获得参与者信息
	    	jsonArry = JSONArray.fromObject(taskUsersList);
	    	this.logger.info("jsonArry"+jsonArry);
    	}catch(Exception e){
    		logger.error("获取任务参与者信息失败");
    		e.printStackTrace();
    	}
    	this.logger.info("获取任务参与者信息完成");
        return jsonArry;
    } 
    
    /**
     * 查询过早开始的任务：即前置任务还未全部完成，自己就已开始的任务
     */
    @RequestMapping("/tooEarlyTask.do") 
    public @ResponseBody JSON tooEarlyTask(@RequestParam("flow_id") String flow_id) { 
    	this.logger.info("查询过早开始的任务开始");
    	this.logger.info(flow_id);
    	JSONArray jsonArry = null;
    	try{
	    	List tooEarlyTaskList = this.TaskService.tooEarlyTaskList(flow_id);	//获得参与者信息
	    	jsonArry = JSONArray.fromObject(tooEarlyTaskList);
	    	this.logger.info("jsonArry"+jsonArry);
    	}catch(Exception e){
    		logger.error("查询过早开始的任务失败");
    		e.printStackTrace();
    	}
    	this.logger.info("查询过早开始的任务完成");
        return jsonArry;
    } 
    
    /**
     * 通过excel文档初始化流程
     */
    @RequestMapping("/initFlowByFile.do") 
    public @ResponseBody JSON initFlowByFile(@RequestParam("filename") String filename) { 
    	this.logger.info("通过excel文档初始化流程开始");
    	this.logger.info(filename);
    	JSONArray jsonArry = null;
    	try{
	    	this.TaskService.initFlowByFile(filename);	//通过excel文档初始化流程
    	}catch(Exception e){
    		logger.error("通过excel文档初始化流程失败");
    		e.printStackTrace();
    	}
    	this.logger.info("通过excel文档初始化流程完成");
        return jsonArry;
    } 
    
    /**
     * 查询任务完成情况占比
     * @return
     */
    @RequestMapping("/getTaskPercent.do") 
    public @ResponseBody JSON getTaskPercent(@RequestParam("flow_id") String flow_id) { 
    	this.logger.info("查询任务完成情况占比开始");
    	JSONArray jsonarray = null;
    	try{
    		jsonarray = this.TaskService.getTaskPercent(flow_id);
    	}catch(Exception e){
    		logger.error("查询任务完成情况占比失败");
    		e.printStackTrace();
    	}
    	this.logger.info("查询任务完成情况占比完成");
        return jsonarray;
    } 
    
    /**
     * 查询任务耗时
     * @return
     */
    @RequestMapping("/getTaskExpend.do") 
    public @ResponseBody JSON getTaskExpend(@RequestParam("flow_id") String flow_id) { 
    	this.logger.info("查询任务耗时开始");
    	JSONArray jsonarray = null;
    	try{
    		jsonarray = this.TaskService.getTaskExpend(flow_id);
    	}catch(Exception e){
    		logger.error("查询任务耗时失败");
    		e.printStackTrace();
    	}
    	this.logger.info("查询任务耗时完成");
        return jsonarray;
    } 
    
    /**
     * 查询任务完成情况占比-分责任人统计
     * @return
     */
    @RequestMapping("/getTaskProgress.do") 
    public @ResponseBody JSON getTaskProgress(@RequestParam("flow_id") String flow_id) { 
    	this.logger.info("查询任务完成情况占比-分责任人统计 开始");
    	JSONArray jsonarray = null;
    	try{
    		jsonarray = this.TaskService.getTaskProgress(flow_id);
    		this.logger.info("jsonArry"+jsonarray);
    	}catch(Exception e){
    		logger.error("查询任务完成情况占比-分责任人统计 失败");
    		e.printStackTrace();
    	}
    	this.logger.info("查询任务完成情况占比-分责任人统计 完成");
        return jsonarray;
    }     

    /**
     * 更新任务信息
     * @return
     */
    @RequestMapping("/updateTask.do") 
    public @ResponseBody String updateTask(@RequestParam("flow_id") String flow_id
    									,@RequestParam("task_id") String task_id 
    									,@RequestParam("task_stat") String task_stat
    									,HttpSession session) { 
    	this.logger.info("更新任务信息开始");
    	User user = (User)session.getAttribute("user");
    	this.logger.info(flow_id + " "+ task_id);
    	
    	String result = "";
    	
    	try{
    		result = this.TaskService.updateTask(flow_id, task_id, task_stat, user);	//获得参与者信息
    	}catch(Exception e){
    		logger.error("更新任务信息失败");
    		e.printStackTrace();
    	}
    	this.logger.info("更新任务信息完成");
        return result;
    } 
    
    /**
     * 更新任务信息
     * @return
     */
    @RequestMapping("/login1.do") 
    public @ResponseBody void login(@RequestParam("username") String username
    									,@RequestParam("password") String password) { 
    	this.logger.info("登陆开始");
    	this.logger.info("登陆完成");
        return;
    } 
}
