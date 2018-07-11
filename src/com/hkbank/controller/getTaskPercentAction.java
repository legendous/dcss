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
public class getTaskPercentAction {
	//被注入的流程服务
	private final FlowService FlowService;
	//log
	private Logger logger = (Logger) LoggerFactory.getLogger(this.getClass().getName());

    @Autowired 
    public getTaskPercentAction(FlowService FlowService) { 
        this.FlowService = FlowService; 
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
    		jsonarray = this.FlowService.getTaskPercent(flow_id);
    	}catch(Exception e){
    		logger.error("查询任务完成情况占比失败");
    		e.printStackTrace();
    	}
    	this.logger.info("查询任务完成情况占比完成");
        return jsonarray;
    } 
}
