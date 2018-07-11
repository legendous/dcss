package com.hkbank.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.hkbank.dao.DAO;
public class DAOImpl implements DAO {
	
	public DAOImpl(){
		
	}
	
	private SqlSession session;
	
	public SqlSession getSession(){
		return session;
	}
	public void setSession(SqlSession session){
		this.session = session;
	}

	//增加
	public void add(String sql, Map argMap) {
    	 session.insert(sql ,argMap);
	}
	
	//删除
	public void del(String sql, Map argMap) {
    	 session.delete(sql ,argMap);
	}
	
	//修改
	public void mod(String sql, Map argMap) {
    	 session.update(sql ,argMap);
	}
	
	//查询
	public List getList(String sql, Map argMap){
		List result = session.selectList(sql ,argMap);
		return result;
	}
}
