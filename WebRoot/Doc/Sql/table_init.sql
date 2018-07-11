-- 建表：流程表 flow
drop table flow;
create table flow
(
  flow_id   varchar2(8) not null,	--流程ID
  flow_name varchar2(100),			--流程名称
  flow_stat varchar2(1)	default 0 not null	--流程状态	0：初始状态 	1：开始执行	2：已完成
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table flow
  add constraint flow_key primary key (FLOW_ID);

-- 建表:任务表 task
drop table task;
create table task
(
  flow_id        varchar2(8),		--所属流程ID
  task_id        varchar2(8) not null,		--任务ID
  task_name      varchar2(500),		--任务名称
  task_content   varchar2(500),		--任务详细内容
  task_stat   	varchar2(2),		--任务状态
	-- 0：待执行		1：执行中	2：异常		3：失败		4：已完成		-1：未知
  task_stat_pre   	varchar2(2),		--预提交任务状态
	-- 0：待执行		1：执行中	2：异常		3：失败		4：已完成		-1：未知
  task_begin_time_plan   date,		--计划开始时间
  task_end_time_plan   date,		--计划结束时间
  task_begin_time_real   date,		--实际开始时间
  task_end_time_real   date,		--实际开始时间
  task_level     varchar2(2),		--任务层级
  parent_task_id varchar2(8),		--上级任务ID
  front_task_id  varchar2(100)		--前置任务ID，，以“,”分隔
);
-- task_id作为主键
alter table TASK
  add constraint task_key primary key (FLOW_ID,TASK_ID);


-- 建表:用户表 users
drop table USERS;
create table USERS
(
  user_id        VARCHAR2(8) not null,	--用户ID，一般为员工工号
  user_name      VARCHAR2(100),			--用户姓名
  user_role      VARCHAR2(1),			--用户角色  0：管理员   1：执行人
  user_depart    VARCHAR2(50),			--用户所属部门
  user_telephone VARCHAR2(20),			--用户座机
  user_mobile    VARCHAR2(20),			--用户手机
  user_pwd       VARCHAR2(8)			--用户密码
);
-- user_id作为主键 
alter table USERS
  add constraint USERS_KEY primary key (USER_ID);
  
  
-- 建表:成员小组表 team
drop table team;
create table team
(
  team_id        VARCHAR2(8) not null,	--小组
  team_index     VARCHAR2(8) not null,	--小组序号	
	-- 页面被分成4*3的12个区域，编号从上到下从左到右依次为1-12，通过此字段来确定小组显示在哪个区域
	-- 1	4	7	10
	-- 2	5	8	11
	-- 3	6	9	12
  team_name      VARCHAR2(100)			--小组名
);
-- team_id作为主键 
alter table team
  add constraint TEAM_KEY primary key (team_id);
  

  
-- 建表：TASK_ALLOT 任务分配表
drop table TASK_ALLOT;
create table TASK_ALLOT
(
  flow_id varchar2(8) not null,  --流程ID
  task_id varchar2(8) not null,  --任务ID
  user_id varchar2(8) not null,   --用户ID
  header  varchar2(1) default 0 not null    --是否任务责任人 0：否  1：是  ，单一任务责任人唯一
);
-- 一个人在一个流程的一个任务中，只能担任一个角色，但可以在不同任务中，担任其他角色 
alter table TASK_ALLOT
  add constraint task_allot_key primary key (FLOW_ID, TASK_ID, USER_ID);
  
-- 建表：TEAMERS 小组成员表，N个用户组成一个小组
drop table teamers;
create table teamers
(
  flow_id varchar2(8) not null,	-- 流程ID	一个用户在不同流程中可能担任不同角色
  team_id varchar2(8) not null,	-- 小组ID
  user_id varchar2(8) not null,	-- 用户ID
  leader  varchar2(2) default 0 not null	-- “是否为组长	0:否	 1:是，    小组内，组长唯一”作废
                                            -- 20151008修改为：组员排序标识：标识号由小到大，人员在列表中由上到下
);
-- 一个人可以在不同流程或不同组中担任不同角色 
alter table TEAMERS
  add constraint teamers_key primary key (FLOW_ID, TEAM_ID, USER_ID);