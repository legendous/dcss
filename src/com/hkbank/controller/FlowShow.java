package com.hkbank.controller;

import net.sf.json.JSON;

import org.dom4j.DocumentException;
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Controller; 
import org.springframework.web.bind.annotation.RequestMapping; 
import org.springframework.web.bind.annotation.ResponseBody;

import com.hkbank.service.TaskService;

@Controller 
public class FlowShow {
	private final TaskService TaskService;

    @Autowired 
    public FlowShow(TaskService TaskService) { 
        this.TaskService = TaskService; 
    }

    /**
     * 获得流程信息并以json格式返回页面
     * @return
     */
    @RequestMapping("/flowShow.do") 
    public @ResponseBody JSON getFlow() { 
    	JSON flowJson = null;
    	try {
			flowJson= this.TaskService.initFlow();
		} catch (DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return flowJson;
    } 
}
