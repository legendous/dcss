package com.hkbank.model;

import java.util.Map;

public class Task {
	
	public Task(){
		
	}
	
	private String task_id;		//任务ID
	private String flow_id; 	//所属流程ID
	private String task_name;	//任务名称
	private String task_content;	//任务详细内容
	private String task_stat;		//任务状态
		// 0：待执行		1：已完成	2：异常		3：失败		4：执行中
	private String task_begin_time_plan;	//计划开始时间
	private String task_end_time_plan;		//计划结束时间
	private String task_begin_time_real;	//实际开始时间
	private String task_end_time_real;		//实际开始时间
	private String header_id;		//负责人ID，唯一
	private String header_name;		//负责人姓名
	private Map<String, String> users;		//参与人
	private String task_level;		//任务层级
	private String parent_task_id;	//上级任务ID
	private String front_task_id;	//前置任务ID，，以“,”分隔
	
	public String getTask_id() {
		return task_id;
	}
	public void setTask_id(String taskId) {
		task_id = taskId;
	}
	public String getFlow_id() {
		return flow_id;
	}
	public void setFlow_id(String flowId) {
		flow_id = flowId;
	}
	public String getTask_name() {
		return task_name;
	}
	public void setTask_name(String taskName) {
		task_name = taskName;
	}
	public String getTask_content() {
		return task_content;
	}
	public void setTask_content(String taskContent) {
		task_content = taskContent;
	}
	public String getTask_stat() {
		return task_stat;
	}
	public void setTask_stat(String taskStat) {
		task_stat = taskStat;
	}
	public String getTask_begin_time_plan() {
		return task_begin_time_plan;
	}
	public void setTask_begin_time_plan(String taskBeginTimePlan) {
		task_begin_time_plan = taskBeginTimePlan;
	}
	public String getTask_end_time_plan() {
		return task_end_time_plan;
	}
	public void setTask_end_time_plan(String taskEndTimePlan) {
		task_end_time_plan = taskEndTimePlan;
	}
	public String getTask_begin_time_real() {
		return task_begin_time_real;
	}
	public void setTask_begin_time_real(String taskBeginTimeReal) {
		task_begin_time_real = taskBeginTimeReal;
	}
	public String getTask_end_time_real() {
		return task_end_time_real;
	}
	public void setTask_end_time_real(String taskEndTimeReal) {
		task_end_time_real = taskEndTimeReal;
	}
	
	public String getTask_level() {
		return task_level;
	}

	public String getHeader_id() {
		return header_id;
	}
	public void setHeader_id(String headerId) {
		header_id = headerId;
	}
	public String getHeader_name() {
		return header_name;
	}
	public void setHeader_name(String headerName) {
		header_name = headerName;
	}
	public Map<String, String> getUsers() {
		return users;
	}
	public void setUsers(Map<String, String> users) {
		this.users = users;
	}
	public void setTask_level(String taskLevel) {
		task_level = taskLevel;
	}
	public String getParent_task_id() {
		return parent_task_id;
	}
	public void setParent_task_id(String parentTaskId) {
		parent_task_id = parentTaskId;
	}
	public String getFront_task_id() {
		return front_task_id;
	}
	public void setFront_task_id(String frontTaskId) {
		front_task_id = frontTaskId;
	}
	
}
