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
public class updateTaskAction {
	//被注入的流程服务
	private final FlowService FlowService;
	//log
	private Logger logger = (Logger) LoggerFactory.getLogger(this.getClass().getName());

    @Autowired 
    public updateTaskAction(FlowService FlowService) { 
        this.FlowService = FlowService; 
    }

    /**
     * 更新任务信息
     * @return
     */
    @RequestMapping("/updateTask.do") 
    public @ResponseBody void updateTask(@RequestParam("FLOW_ID") String flow_id
    									,@RequestParam("TASK_ID") String task_id 
    									,@RequestParam("TASK_STAT") String task_stat) { 
    	this.logger.info("更新任务信息开始");
    	this.logger.info(flow_id + " "+ task_id);
    	
    	try{
	    	this.FlowService.updateTask(flow_id, task_id, task_stat);	//获得参与者信息
    	}catch(Exception e){
    		logger.error("更新任务信息失败");
    		e.printStackTrace();
    	}
    	this.logger.info("更新任务信息完成");
        return;
    } 
}
