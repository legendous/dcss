--插入流程数据
insert into flow(FLOW_ID,FLOW_NAME)
values('2','ESB系统迁移');

--插入任务数据
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('2','1','事前检查','检查迁移准备情况，包括环境准备、数据库准备、网络调整、业务量确认等','0',to_date('20150414 21:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 21:30:00','yyyyMMdd HH24:Mi:SS'),'1','','');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('2','2','数据平台抽数修改、验证','将数据平台ESB抽数地址改为新地址','0',to_date('20150414 22:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 22:10:00','yyyyMMdd HH24:Mi:SS'),'1','','');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('2','3','停止原汉口应用','','0',to_date('20150414 22:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 22:10:00','yyyyMMdd HH24:Mi:SS'),'1','','');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('2','4','清理光谷数据库','','0',to_date('20150414 22:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 22:10:00','yyyyMMdd HH24:Mi:SS'),'1','','');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('2','5','停原数据库','','0',to_date('20150414 22:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 22:20:00','yyyyMMdd HH24:Mi:SS'),'1','','');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('2','6','配置负载均衡，开启新的负载均衡','修改F5配置','0',to_date('20150414 22:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 22:20:00','yyyyMMdd HH24:Mi:SS'),'1','','3');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('2','7','启动应用','','0',to_date('20150414 22:20:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 22:30:00','yyyyMMdd HH24:Mi:SS'),'1','',4','5','6"');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('2','8','VCS切换验证','','0',to_date('20150414 22:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 22:45:00','yyyyMMdd HH24:Mi:SS'),'1','','7');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('2','9','ESB割接验证','','0',to_date('20150414 22:45:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 23:00:00','yyyyMMdd HH24:Mi:SS'),'1','','8');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('2','10','测试','','0',to_date('20150414 23:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 23:30:00','yyyyMMdd HH24:Mi:SS'),'1','','9');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('2','11','数据平台抽数','','0',to_date('20150415 00:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150415 00:10:00','yyyyMMdd HH24:Mi:SS'),'1','','10');


-- 插入用户数据
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104803','李晓希','1','信息科技部','67803972','18502721430','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('103989','刘刚','1','信息科技部','67802194','18963978303','hkbank');


-- 插入小组成员表
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('2', '1', '103964', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('2', '2', '104065', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('2', '2', '104184', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('2', '2', '105288', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('2', '3', '104277', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('2', '4', '104803', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('2', '5', '104803', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('2', '6', '104726', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('2', '6', '103989', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('2', '7', '103971', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('2', '8', '104066', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('2', '8', '105076', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('2', '9', '103988', '1');

-- 插入任务分配关系数据
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('2', '1', '104803', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('2', '1', '104184', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('2', '2', '103989', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('2', '2', '104184', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('2', '3', '104803', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('2', '3', '104184', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('2', '4', '104726', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('2', '4', '105288', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('2', '5', '104726', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('2', '5', '105288', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('2', '6', '105076', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('2', '7', '104803', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('2', '7', '104184', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('2', '8', '105288', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('2', '8', '104184', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('2', '9', '104803', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('2', '10', '104803', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('2', '10', '104184', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('2', '11', '103989', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('2', '11', '104184', '0');