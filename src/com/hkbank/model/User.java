package com.hkbank.model;

import java.util.Map;

public class User {
	
	public User(){
		
	}

	private String user_id;		//用户ID
	private String user_name; 	//用户姓名
	private String user_role;	//用户权限
	private String user_depart;	//用户所属部门
	private String user_telephone;		//用户座机
	private String user_mobile;			//用户手机
	private String user_pwd;			//登陆密码
	
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String userId) {
		user_id = userId;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String userName) {
		user_name = userName;
	}
	public String getUser_role() {
		return user_role;
	}
	public void setUser_role(String userRole) {
		user_role = userRole;
	}
	public String getUser_depart() {
		return user_depart;
	}
	public void setUser_depart(String userDepart) {
		user_depart = userDepart;
	}
	public String getUser_telephone() {
		return user_telephone;
	}
	public void setUser_telephone(String userTelephone) {
		user_telephone = userTelephone;
	}
	public String getUser_mobile() {
		return user_mobile;
	}
	public void setUser_mobile(String userMobile) {
		user_mobile = userMobile;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String userPwd) {
		user_pwd = userPwd;
	}
	
	public User(String user_id, String user_name, String user_role, String user_depart
				, String user_telephone, String user_mobile, String user_pwd){
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_role = user_role;
		this.user_depart = user_depart;
		this.user_telephone = user_telephone;
		this.user_mobile = user_mobile;
		this.user_pwd = user_pwd;
	}
}
