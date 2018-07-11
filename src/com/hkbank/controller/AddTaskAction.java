package com.hkbank.controller;

import net.sf.json.JSON;

import org.dom4j.DocumentException;
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Controller; 
import org.springframework.web.bind.annotation.RequestMapping; 
import org.springframework.web.bind.annotation.ResponseBody;

import com.hkbank.service.FlowService;

@Controller 
public class AddTaskAction {
	private final FlowService FlowService;

    @Autowired 
    public AddTaskAction(FlowService FlowService) { 
        this.FlowService = FlowService; 
    }

    /**
     * 增加任务
     * @return
     */
    @RequestMapping("/addTask.do") 
    public @ResponseBody void addTask() { 
    	this.FlowService.addTask();
		return;
    } 
}
