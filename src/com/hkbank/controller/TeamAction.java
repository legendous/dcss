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

import com.hkbank.service.UserService;

@Controller 
public class TeamAction {
	//被注入的流程服务
	private final UserService UserService;
	//log
	private Logger logger = (Logger) LoggerFactory.getLogger(this.getClass().getName());

    @Autowired 
    public TeamAction(UserService UserService) { 
        this.UserService = UserService; 
    }

    /**
     * 获取任务列表
     * @return
     */
    @RequestMapping("/getTeamers.do") 
    public @ResponseBody JSON getTaskList(@RequestParam("FLOW_ID") String flow_id) { 
    	this.logger.info("获取任务列表开始");
    	JSON flowJson = null;
    	try{
	    	List teamersList = this.UserService.getTeamersList(flow_id);
	    	String XmlString = this.UserService.list2XmlString(teamersList);
	    	//System.out.println(XmlString);
	    	flowJson = this.UserService.XmlString2JSON(XmlString);
    	}catch(Exception e){
    		logger.error("获取任务列表失败");
    		e.printStackTrace();
    	}
    	this.logger.info("获取任务列表完成");
        return flowJson;
    } 
}
