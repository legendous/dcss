package com.hkbank.base;

import java.io.File;

import net.sf.json.JSON;
import net.sf.json.xml.XMLSerializer;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.io.SAXReader;

public class FileProcess {
	
	public FileProcess(){
		
	}
	
	/**
	 * xml文件转成Json格式
	 */
	public JSON xml2Json(String flowFilePath) throws DocumentException{
		//读取xml
		SAXReader saxReader = new SAXReader();
		Document tempdocument = saxReader.read(new File(flowFilePath));
		
		//xml转String
		String xml = tempdocument.asXML();  
		
		//xmlString转Json
		XMLSerializer xmlSerializer = new XMLSerializer();  
		JSON json = xmlSerializer.read(xml);  
		  
		System.out.println(json.toString(2)); 
		//返回Json格式
		return json;
	} 
	
	/**
	 * xml字符串转成Json格式
	 */
	public JSON xmlString2Json(String XmlString) throws DocumentException{
		
		XMLSerializer xmlSerializer = new XMLSerializer();  
		JSON json = xmlSerializer.read(XmlString);  
		  
		System.out.println(json.toString(2)); 
		//返回Json格式
		return json;
	} 

}
