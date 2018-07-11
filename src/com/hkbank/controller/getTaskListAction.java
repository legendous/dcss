package com.hkbank.controller;

import java.util.List;

import net.sf.json.JSON;

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
public class getTaskListAction {
	//被注入的流程服务
	private final FlowService FlowService;
	//log
	private Logger logger = (Logger) LoggerFactory.getLogger(this.getClass().getName());

    @Autowired 
    public getTaskListAction(FlowService FlowService) { 
        this.FlowService = FlowService; 
    }

    /**
     * 获取任务列表
     * @return
     */
    @RequestMapping("/getTaskList.do") 
    public @ResponseBody JSON getTaskList(@RequestParam("flow_id") String flow_id) { 
    	this.logger.info("获取任务列表开始");
    	JSON flowJson = null;
    	try{
	    	List taskList = this.FlowService.getTaskList(flow_id);
	    	String XmlString = this.FlowService.list2XmlString(taskList);
	    	System.out.println(XmlString);
	    	flowJson = this.FlowService.XmlString2JSON(XmlString);
    	}catch(Exception e){
    		logger.error("获取任务列表失败");
    		e.printStackTrace();
    	}
    	this.logger.info("获取任务列表完成");
        return flowJson;
    } 
}
