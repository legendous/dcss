package com.hkbank.service;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import net.sf.json.JSON;
import net.sf.json.JSONArray;

import ch.qos.logback.classic.Logger;

import com.hkbank.base.FileProcess;
import com.hkbank.impl.DAOImpl;
import com.hkbank.model.Task;
import com.hkbank.servlet.InitServlet;

/*
 * 流程服务，用来处理与流程、任务相关的逻辑
 */
@Service 
public class ConfigService{
	//log
	private Logger logger = (Logger) LoggerFactory.getLogger(this.getClass().getName());

	//配置文件路径
	private String actionConfigFilePath = this.getClass().getClassLoader().getResource("/").getPath()+"buzConfig/actionConfig.xml";

	public String getAction(HttpServletRequest request, 
							HttpServletResponse response, 
							Model model){
		this.logger.info("根据actionConfig的配置，处理params，并控制跳转页面-开始");
		String target = "";
		
		//系统启动时，根据前台传来的actionName，快速获得的action配置Map
		Map actionsMap = InitServlet.actinonsMap;
		Map actionMap = (Map)actionsMap.get(request.getParameter("actionName"));
		

		//获得并处理params，把前台form里传来的参数透转到下一页面
		List paramsList = (List)actionMap.get("params");
		Iterator it = paramsList.iterator();
		while(it.hasNext()){
			String param = (String)it.next();
			model.addAttribute(param, request.getParameter(param));
		}
		
		//获得跳转页面的名称
		target = (String)actionMap.get("target");
		
		this.logger.info("根据actionConfig的配置，处理params，并控制跳转页面-结束");
		return target;
	}

}
