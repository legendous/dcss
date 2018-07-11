package com.hkbank.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import net.sf.json.JSON;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Controller; 
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping; 
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import ch.qos.logback.classic.Logger;

import com.hkbank.model.User;
import com.hkbank.service.UserService;

@Controller 
public class LoginAction {
	//被注入的流程服务
	private final UserService UserService;
	//log
	private Logger logger = (Logger) LoggerFactory.getLogger(this.getClass().getName());

    @Autowired 
    public LoginAction(UserService UserService) { 
        this.UserService = UserService; 
    }

    /**
     * 获取任务列表
     * @return
     */
    @RequestMapping("/login.do") 
    public String login(@RequestParam("user_id") String user_id
    					, HttpSession session
    					, Model model) {
    	this.logger.info("登陆开始");
    	try{
	    	User user = this.UserService.getUser(user_id);
	    	
	    	if(user == null){	//如果用户名密码错误，则报错
	    		logger.error("登陆，根据用户名、密码获得用户信息-失败：用户名密码错误");
	    		return "error";
	    	}else{	//如果用户名密码正确，则开始判断用户权限
	    		session.setAttribute("user", user);
	    		System.out.println("============"+session.getAttribute("user_id")+"===========");
	    	    this.logger.info("登陆完成");
	    	    return "taskTable";
	    	}
    	}catch(Exception e){
    		logger.error("登陆失败");
    		e.printStackTrace();
    		return "error";
    	}
    } 
}
