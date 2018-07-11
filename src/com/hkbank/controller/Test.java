package com.hkbank.controller;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ch.qos.logback.classic.Logger;

import com.hkbank.service.ITestTableDAOService2;

@Controller 
public class Test {
	private final ITestTableDAOService2 ITestTableDAOService2;
	private Logger logger = (Logger) LoggerFactory.getLogger(this.getClass().getName());
	
	@Autowired 
    public Test(ITestTableDAOService2 ITestTableDAOService2) { 
        this.ITestTableDAOService2 = ITestTableDAOService2; 
    }
	
	/**
     * 
     * @return
     */
    @RequestMapping("/test.do") 
    public @ResponseBody void test() { 
    	
    	try {
			this.ITestTableDAOService2.doInsert();
			this.logger = (Logger) LoggerFactory.getLogger(Test.class);
			logger.debug("INSERT SUCCESS!");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return;
    } 
}
