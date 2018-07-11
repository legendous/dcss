package com.hkbank.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Controller; 
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap; 
import org.springframework.validation.BindingResult; 
import org.springframework.web.bind.annotation.ModelAttribute; 
import org.springframework.web.bind.annotation.RequestMapping; 
import org.springframework.web.bind.annotation.RequestMethod; 
import org.springframework.web.bind.annotation.RequestParam; 
import org.springframework.web.bind.annotation.SessionAttributes; 
import org.springframework.web.bind.support.SessionStatus;

import com.hkbank.model.Person; 
import com.hkbank.service.ConfigService;
import com.hkbank.service.DummyService;
import com.hkbank.servlet.InitServlet;

/**
 * 总action，目前所有简单跳转都可以通过这个action，无需写java代码，只需配置通过actionConfig.xml
 * 配置文件来实现。未来将把所有页面请求都囊括其中
 * @author xuyang
 */
@Controller 
@RequestMapping("/action.do")
public class MainAction {

    private final ConfigService configService;

    @Autowired 
    public MainAction(ConfigService configService) { 
        this.configService = configService; 
    }
    
    @Autowired  
    private  HttpServletRequest request;

    @RequestMapping(method = RequestMethod.GET) 
    public String getForm(HttpServletRequest request, HttpServletResponse response, Model model) { 
    	//获得要跳转的页面，同时处理参数
    	String target = this.configService.getAction(request, response, model);
        return target; 
    }

    @RequestMapping(method = RequestMethod.POST) 
    public String postForm(HttpServletRequest request, HttpServletResponse response, Model model) { 
    	
    	//获得要跳转的页面，同时处理参数
    	String target = this.configService.getAction(request, response, model);
    	
        return target; 
    }
}