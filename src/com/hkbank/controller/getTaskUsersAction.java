package com.hkbank.controller;

import java.util.List;

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

import com.hkbank.service.FlowService;

@Controller 
public class getTaskUsersAction {
	//被注入的流程服务
	private final FlowService FlowService;
	//log
	private Logger logger = (Logger) LoggerFactory.getLogger(this.getClass().getName());

    @Autowired 
    public getTaskUsersAction(FlowService FlowService) { 
        this.FlowService = FlowService; 
    }

    /**
     * 获取某任务的参与者信息
     * @return
     */
    @RequestMapping("/getTaskUsers.do") 
    public @ResponseBody JSON getTaskUsers(@RequestParam("FLOW_ID") String flow_id
    									,@RequestParam("TASK_ID") String task_id) { 
    	this.logger.info("获取任务参与者信息开始");
    	this.logger.info(flow_id + " "+ task_id);
    	JSONArray jsonArry = null;
    	try{
	    	List taskUsersList = this.FlowService.getTaskUsersList(flow_id, task_id);	//获得参与者信息
	    	jsonArry = JSONArray.fromObject(taskUsersList);
	    	this.logger.info("jsonArry"+jsonArry);
    	}catch(Exception e){
    		logger.error("获取任务参与者信息失败");
    		e.printStackTrace();
    	}
    	this.logger.info("获取任务参与者信息完成");
        return jsonArry;
    } 
}
