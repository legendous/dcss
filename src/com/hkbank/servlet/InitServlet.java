package com.hkbank.servlet;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.slf4j.LoggerFactory;

import ch.qos.logback.classic.Logger;


public class InitServlet extends HttpServlet{  
	//log
	private Logger logger = (Logger) LoggerFactory.getLogger(this.getClass().getName());

	//配置文件路径
	private String actionConfigFilePath = this.getClass().getClassLoader().getResource("/").getPath()+"buzConfig/actionConfig.xml";

    public InitServlet(){  
    }  

    /**
     * 静态变量，首次启动时将actionConfig解析成一个Map赋给他，以供其他类调用，且无需每次读文件
     * Map格式：
     * actionMap
     * 	actionName:String
     * 	params:List
     * 		param:String
     * 	target:String
     */
    public static Map actinonsMap = new HashMap();	
    
    public void init(){
    	this.logger.info("========== InitServlet 读取action配置文件-开始 ============");
        
        Document doc = null;
        
		try {
			// 读取并解析XML文档
			// SAXReader就是一个管道，用一个流的方式，把xml文件读出来
			SAXReader reader = new SAXReader();
			doc = reader.read(new File(this.actionConfigFilePath));
			
			Element rootElt = doc.getRootElement(); // 获取根节点
			Map Map_actions = new HashMap();
			
			// 获取根节点下的子节点action
			Iterator it_action = rootElt.elementIterator("action");
			
			while(it_action.hasNext()){
				Element Ele_action = (Element)it_action.next();	//每一个action
				Map actionMap = new HashMap();
				
				//把actionName属性放入actionMap
				this.logger.info("========== actionName:"+Ele_action.elementTextTrim("actionName")+" ============");
				actionMap.put("actionName", Ele_action.elementTextTrim("actionName"));
				
				//把target属性放入actionMap
				this.logger.info("========== target:"+Ele_action.elementTextTrim("target")+" ============");
				actionMap.put("target", Ele_action.elementTextTrim("target"));
				
				//读取参数属性
				Element Ele_params = Ele_action.element("params");
				Iterator it_param = Ele_params.elementIterator("param");
				List paramsList = new ArrayList();
				while(it_param.hasNext()){
					Element Ele_param = (Element)it_param.next();
					//把所有参数属性放入参数List
					this.logger.info("========== param:"+Ele_param.getTextTrim()+" ============");
					paramsList.add(Ele_param.getTextTrim());
				}
				actionMap.put("params", paramsList);
				
				//把格式化好的actionMap以actionName为key放入actionsMap中，以便MainAction根据actionName快速找到需要的actionConfig
				Map_actions.put(Ele_action.elementTextTrim("actionName"), actionMap);
			}
			
			this.actinonsMap = Map_actions;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.logger.info("========== InitServlet 读取action配置文件-开始 ============");
    }
    
	public void doGet(HttpServletRequest httpservletrequest, HttpServletResponse httpservletresponse)  
        throws ServletException, IOException{
    }
}  