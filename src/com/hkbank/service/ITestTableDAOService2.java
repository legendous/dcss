package com.hkbank.service;

import java.util.HashMap;
import java.util.Map;

import com.hkbank.impl.DAOImpl;
import com.hkbank.impl.ITestTableDAOImpl2;

public class ITestTableDAOService2  {
	private ITestTableDAOImpl2 testImpl;
	private DAOImpl daoImpl;
	
	public DAOImpl getDaoImpl() {
		return daoImpl;
	}

	public void setDaoImpl(DAOImpl daoImpl) {
		this.daoImpl = daoImpl;
	}

	public ITestTableDAOImpl2 getTestImpl(){
		return testImpl;
	}
	
	public void setTestImpl(ITestTableDAOImpl2 testImpl){
		this.testImpl = testImpl;
	}

	public void doInsert() {
		// TODO Auto-generated method stub
		//this.testImpl.doInsert();
		Map<String, String> argMap = new HashMap<String, String>();
		argMap.put("id", "2");
		argMap.put("name", "2222");
		
		this.daoImpl.add("com.hkbank.SqlConfig.TestTable.doInsert", argMap);
	}
}
