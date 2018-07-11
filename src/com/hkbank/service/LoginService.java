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

import ch.qos.logback.classic.Logger;

import com.hkbank.base.FileProcess;
import com.hkbank.impl.DAOImpl;
import com.hkbank.model.Task;

/*
 * 用户服务，用来处理与用户、小组相关的逻辑
 */
@Service 
public class LoginService{
	//log
	private Logger logger = (Logger) LoggerFactory.getLogger(this.getClass().getName());

	private DAOImpl daoImpl;

	public DAOImpl getDaoImpl() {
		return daoImpl;
	}

	public void setDaoImpl(DAOImpl daoImpl) {
		this.daoImpl = daoImpl;
	}
	
	/**
	 * 根据流程ID获得对应的小组及成员列表List
	 */
	public List getTeamersList(String flow_id){
		logger.info("根据流程ID获得对应的小组及成员列表-开始");
		
		List teamersList = null;
		Map argMap = new HashMap();
		argMap.put("flow_id", flow_id);
		
		teamersList = this.daoImpl.getList("com.hkbank.SqlConfig.UserSql.getTeamersList", argMap);
		logger.info("根据流程ID获得对应的小组及成员列表-结束");
		return teamersList;
	}
	
	/**
	 * List转成“小组成员”格式的XML-String
	 * 例子样式：
	 * <TEAMS>
	 *   <TEAM>
	 *     <FLOW_ID>1</FLOW_ID>
	 *     <TEAM_ID>2</TEAM_ID>
	 *     <TEAM_INDEX>2</TEAM_INDEX>
	 *     <TEAM_NAME>灾备组</TEAM_NAME>
	 *     <USER>
	 *       <USER_ID>104065</USER_ID>
	 *       <USER_NAME>杨志</USER_NAME>
	 *       <USER_ROLE>1</USER_ROLE>
	 *       <USER_DEPART>信息科技部</USER_DEPART>
	 *       <USER_TELEPHONE>67803XXX</USER_TELEPHONE>
	 *       <USER_MOBILE>18942906XXX</USER_MOBILE>
	 *     </USER>
	 *     <USER>
	 *       <USER_ID>104184</USER_ID>
	 *       <USER_NAME>徐扬</USER_NAME>
	 *       <USER_ROLE>1</USER_ROLE>
	 *       <USER_DEPART>信息科技部</USER_DEPART>
	 *       <USER_TELEPHONE>67803XXX</USER_TELEPHONE>
	 *       <USER_MOBILE>18963978XXX</USER_MOBILE>
	 *     </USER>
	 *   <TEAM>
	 * <TEAMS>  
	 */
	public String list2XmlString(List list){
		logger.info("list转换成XmlString-开始");
		String XmlString = "";
		
		//1. 构造空的Document
		Document doc = DocumentHelper.createDocument();
		
		//2. 构造根元素
	    Element root = doc.addElement("TEAMS");
	    Element E = null;			//当前的元素
	    Element lastE = null;
	    
	    //包含已存在的组的Map，每遇到一个新组，就将其添加进该Map，用来判断组是否存在
	    Map teamMap = new HashMap();
	    
	    //循环list每一个用户，所属组不存在就新建组，存在把该用户加至该组中
		Iterator it = list.iterator();
		while(it.hasNext()){
			Map map = (HashMap)it.next();	//获得每一个用户
			
			String TEAM_ID = (String)map.get("TEAM_ID");
			if(teamMap.containsKey(TEAM_ID)){	//如果当前组已存在，则继续往上一个Element TEAM中增加USER
				E = lastE;
			}else{	//如果当前组不存在，则新建该组节点，并将该组加入teamMap中，该用户放入该组中
				E = root.addElement("TEAM");
				//增加TEAM子节点流程ID
				Element E_FLOW_ID = E.addElement("FLOW_ID");
				E_FLOW_ID.setText(((String)map.get("FLOW_ID")==null)?"":(String)map.get("FLOW_ID"));
				//增加TEAM子节点小组ID
				Element E_TEAM_ID = E.addElement("TEAM_ID");
				E_TEAM_ID.setText(((String)map.get("TEAM_ID")==null)?"":(String)map.get("TEAM_ID"));
				//增加TEAM子节点小组序号
				Element E_TEAM_INDEX = E.addElement("TEAM_INDEX");
				E_TEAM_INDEX.setText(((String)map.get("TEAM_INDEX")==null)?"":(String)map.get("TEAM_INDEX"));
				//增加TEAM子节点小组名称
				Element E_TEAM_NAME = E.addElement("TEAM_NAME");
				E_TEAM_NAME.setText(((String)map.get("TEAM_NAME")==null)?"":(String)map.get("TEAM_NAME"));
			}
				
			//增加TEAM子节点用户
			Element E_USER = E.addElement("USER");
			//用户节点增加子节点用户ID
			Element E_USER_ID = E_USER.addElement("USER_ID");
			E_USER_ID.setText(((String)map.get("USER_ID")==null)?"":(String)map.get("USER_ID"));
			//用户节点增加子节点用户ID
			Element E_USER_NAME = E_USER.addElement("USER_NAME");
			E_USER_NAME.setText(((String)map.get("USER_NAME")==null)?"":(String)map.get("USER_NAME"));
			//用户节点增加子节点用户ID
			Element E_USER_ROLE = E_USER.addElement("USER_ROLE");
			E_USER_ROLE.setText(((String)map.get("USER_ROLE")==null)?"":(String)map.get("USER_ROLE"));
			//用户节点增加子节点用户ID
			Element E_USER_DEPART = E_USER.addElement("USER_DEPART");
			E_USER_DEPART.setText(((String)map.get("USER_DEPART")==null)?"":(String)map.get("USER_DEPART"));
			//用户节点增加子节点用户ID
			Element E_USER_TELEPHONE = E_USER.addElement("USER_TELEPHONE");
			E_USER_TELEPHONE.setText(((String)map.get("USER_TELEPHONE")==null)?"":(String)map.get("USER_TELEPHONE"));
			//用户节点增加子节点用户ID
			Element E_USER_MOBILE = E_USER.addElement("USER_MOBILE");
			E_USER_MOBILE.setText(((String)map.get("USER_MOBILE")==null)?"":(String)map.get("USER_MOBILE"));
				
			//把E付给lastE，供下一次循环使用
			lastE = E;
			//把TEAM_ID放入teamMap中，供下一个循环判断用
			teamMap.put(TEAM_ID, TEAM_ID);
		}
		
		XmlString = doc.asXML();
		//System.out.println(XmlString);
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
