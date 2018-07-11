package com.hkbank.service;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import net.sf.json.JSON;
import net.sf.json.JSONArray;

import ch.qos.logback.classic.Logger;

import com.hkbank.base.FileProcess;
import com.hkbank.impl.DAOImpl;
import com.hkbank.model.Task;

/*
 * 流程服务，用来处理与流程、任务相关的逻辑
 */
@Service 
public class FlowService{
	//log
	private Logger logger = (Logger) LoggerFactory.getLogger(this.getClass().getName());

	private DAOImpl daoImpl;

	public DAOImpl getDaoImpl() {
		return daoImpl;
	}

	public void setDaoImpl(DAOImpl daoImpl) {
		this.daoImpl = daoImpl;
	}
	
	//流程文件路径
	private String flowFilePath = this.getClass().getClassLoader().getResource("/").getPath()+"buzConfig/flow.xml";
	
	/**
	 * 根据流程ID获得对应的任务列表List
	 */
	public List getTaskList(String flow_id){
		logger.info("根据流程ID查询任务列表-开始");
		
		List taskList = null;
		Map argMap = new HashMap();
		argMap.put("flow_id", "1");
		
		taskList = this.daoImpl.getList("com.hkbank.SqlConfig.TaskSql.getTaskList", argMap);
		logger.info("根据流程ID查询任务列表-结束");
		return taskList;
	}
	
	/**
	 * 根据流程ID 任务ID获得某一任务的其他信息
	 */
	public List getTaskUsersList(String flow_id, String task_id){
		logger.info("根据流程ID 任务ID获得某一任务的参与者信息-开始");
		
		List taskUsersList = null;
		Map argMap = new HashMap();
		argMap.put("flow_id", flow_id); 
		argMap.put("task_id", task_id); 
		
		taskUsersList = this.daoImpl.getList("com.hkbank.SqlConfig.TaskSql.getTaskUsersList", argMap);
		
		logger.info("根据流程ID 任务ID获得某一任务的参与者信息-结束");
		return taskUsersList;
	}
	
	/**
	 * 更新某一任务的信息
	 */
	public void updateTask(String flow_id, String task_id, String task_stat){
		logger.info("更新某一任务的信息-开始");
		
		Map argMap = new HashMap();
		argMap.put("flow_id", flow_id); 
		argMap.put("task_id", task_id);
		
		logger.info("更新某一任务的信息-查询原状态-开始");
		List resultList = this.daoImpl.getList("com.hkbank.SqlConfig.TaskSql.getTask", argMap);
		Map taskMap = (Map) resultList.get(0);
		logger.info("更新某一任务的信息-查询原状态-结束");
		
		//原状态
		int task_stat_old = Integer.parseInt((String)taskMap.get("TASK_STAT"));
		//原实际开始时间
		String task_begin_time_real = (null==taskMap.get("TASK_BEGIN_TIME_REAL")? "":(String)taskMap.get("TASK_BEGIN_TIME_REAL"));
		//原实际结束时间
		String task_end_time_real = (null==taskMap.get("TASK_END_TIME_REAL")? "":(String)taskMap.get("TASK_END_TIME_REAL"));  
		//新状态
		int task_stat_new = Integer.parseInt(task_stat);
		//当前系统时间，按格式转成String
		String time_now = (new SimpleDateFormat("yyyyMMdd HH:mm:ss")).format(new Date());
		
		//如果新状态为待执行,则清空实际开始时间和实际结束时间
		if(task_stat_new==0){
			task_begin_time_real = "";
			task_end_time_real = "";
		}
		//如果新状态为执行中或异常，如果没有实际开始时间就更新为当前时间，有就不变，然后清空实际结束时间
		else if(1<=task_stat_new && task_stat_new<=2){
			if(null==task_begin_time_real || "".equals(task_begin_time_real)){
				task_begin_time_real = time_now;
			}
			task_end_time_real = "";
		}
		//如果新状态为失败或已完成，如果没有实际开始时间就更新为当前时间，有就不变
		//                        如果没有实际结束时间就更新为当前时间，有就不变
		else{
			if(null==task_begin_time_real || "".equals(task_begin_time_real)){
				task_begin_time_real = time_now;
			}
			if(null==task_end_time_real || "".equals(task_end_time_real)){
				task_end_time_real = time_now;
			}
		}
		
		argMap.put("task_stat", task_stat); 
		argMap.put("task_begin_time_real", task_begin_time_real); 
		argMap.put("task_end_time_real", task_end_time_real); 
		
		this.daoImpl.mod("com.hkbank.SqlConfig.TaskSql.updateTask", argMap);
		
		logger.info("更新某一任务的信息-结束");
		return;
	}
	
	/**
	 * 增加任务
	 */
	public void addTask(){
		Map<String, String> argMap = new HashMap<String, String>();
		argMap.put("task_id", "1");
		argMap.put("flow_id", "1");
		argMap.put("task_name", "任务名");
		argMap.put("task_content", "任务内容");
		argMap.put("task_stat", "0");
		argMap.put("task_begin_time_plan", "20150331 09:00:00");
		argMap.put("task_end_time_plan", "20150331 10:00:00");
		argMap.put("task_begin_time_real", "20150331 09:00:00");
		argMap.put("task_end_time_real", "20150331 10:00:00");
		argMap.put("header_id", "104184");
		argMap.put("user_id", "104184,104185");
		argMap.put("task_level", "1");
		argMap.put("parent_task_id", "1");
		argMap.put("front_task_id", "1");
		
		argMap.put("id", "2");
		argMap.put("name", "2222");
		
		this.daoImpl.add("com.hkbank.SqlConfig.TestTable.doInsert", argMap);
		return;
	}
	
	/**
	 * 查询任务完成情况占比
	 */
	public JSONArray getTaskPercent(String flow_id){
		logger.info("查询任务完成情况占比-开始");
		
		List taskPercentList = null;
		Map argMap = new HashMap();
		argMap.put("flow_id", flow_id); 
		
		taskPercentList = this.daoImpl.getList("com.hkbank.SqlConfig.TaskSql.getTaskPercent", argMap);
		
		//将List转成JSON
		JSONArray jsonarray = JSONArray.fromObject(taskPercentList);  
		logger.info("查询任务完成情况占比-结束");
		return jsonarray;
	}
	
	/**
	 * 查询任务耗时
	 */
	public JSONArray getTaskExpend(String flow_id){
		logger.info("查询任务耗时-开始");
		
		List taskExpendList = null;
		Map argMap = new HashMap();
		argMap.put("flow_id", flow_id); 
		
		taskExpendList = this.daoImpl.getList("com.hkbank.SqlConfig.TaskSql.getTaskExpend", argMap);
		
		//将List转成JSON
		JSONArray jsonarray = JSONArray.fromObject(taskExpendList);  
		logger.info("查询任务耗时-结束");
		return jsonarray;
	}
	
	
	/**
	 * xml文件转成JSON
	 */
	public JSON initFlow() throws DocumentException{
		FileProcess fp = new FileProcess();
		System.out.println(flowFilePath);
		JSON json= fp.xml2Json(this.flowFilePath);
		return json;
	}
	
	/**
	 * List转成“流程任务”格式的XML-String
	 */
	public String list2XmlString(List list){
		logger.info("list转换成XmlString-开始");
		String XmlString = "";
		
		//1. 构造空的Document
		Document doc = DocumentHelper.createDocument();
		
		//2. 构造根元素
	    Element root = doc.addElement("FLOW");
	    
	    Element lastE = null;		//上一任务的元素
	    int last_task_level = 0;	//上一任务的级别
	    Element E = null;			//当前任务的元素
	    //
	    //循环list，将每一个任务作为一个元素添加到相应位置
		Iterator it = list.iterator();
		while(it.hasNext()){
			Map map = (HashMap)it.next();	//获得每一条任务
			
			if("1".equals((String)map.get("TASK_LEVEL"))){	//如果该任务是1级节点，则在root下增加一个元素
				E = root.addElement("TASK");
			}else{	//如果该任务不是1级节点,则判断其父节点在哪,然后挂于其父节点下,(前提:数据库中按顺序记录)
				int task_level = Integer.parseInt((String)map.get("TASK_LEVEL"));	//当前任务级别
				//如果当前级别小于等于上一任务级别，即当前任务不是上一任务的子任务
				if(task_level<=last_task_level){
					Element parentE = lastE;	//找出真正的父元素
					for(int i=0;i<=last_task_level-task_level;i++){
						parentE = parentE.getParent();
					}
					E = parentE.addElement("TASK");
				}
				//如果当前级别大于上一任务，即当前任务是上一任务的子任务（正常情况下，只会大1级）
				else{
					E = lastE.addElement("TASK");
				}
			}
			
			/*
			 * 为该任务增加子节点，即任务的各种属性，因页面使用JSON，故将属性信息作为子节点来保存
			暴力循环Map，将key作为Element的名字，value作为Element的TEXT值
			将来在TASK表、USERS表中增加任何任务属性字段，都无需修改本段代码，只需修改查询的sqlxml和jsp即可
			 */			
			Set set = map.entrySet();
			Iterator setIt = set.iterator();
			while(setIt.hasNext()){
				Map.Entry entry = (Map.Entry)setIt.next();
				Element X = E.addElement(String.valueOf(entry.getKey()));
				X.setText(String.valueOf(entry.getValue()));
			}
			
			//设置当前任务作为下一任务的上一任务，以供下一任务使用
			lastE = E;
			last_task_level = Integer.parseInt((String)map.get("TASK_LEVEL"));
		}
		XmlString = doc.asXML();
		System.out.println(XmlString);
		logger.info("list转换成XmlString-结束");
		return XmlString;
	}
	
	/**
	 * XmlString转成JSON
	 * @throws DocumentException 
	 */
	public JSON XmlString2JSON(String XmlString) throws DocumentException{
		FileProcess fp = new FileProcess();
		JSON Json = fp.xmlString2Json(XmlString);
		return Json;
	}
	/*public static void main(String[] args){
		FileProcess fp = new FileProcess();
		try {
			fp.xml2Json("src/buzConfig/flow.xml");
		} catch (DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}*/
	
}
