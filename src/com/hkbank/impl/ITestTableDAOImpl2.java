package com.hkbank.impl;



import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.hkbank.dao.ITestTableDAO;
import com.hkbank.model.TestTable;
public class ITestTableDAOImpl2 implements ITestTableDAO {
	
	private SqlSession session;
	
	public SqlSession getSession(){
		return session;
	}
    
	public void setSession(SqlSession session){
		this.session = session;
	}

	public void doInsert() {
    	 TestTable test = new TestTable();
    	 test.setId("2");
    	 test.setName("yuanmomo2");
    	 Map map = new HashMap();
    	 map.put("id", "2");
    	 map.put("name", "2222");
    	 session.insert("com.hkbank.SqlConfig.TestTable.doInsert",map);
	}
}
