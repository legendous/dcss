--插入流程数据
insert into flow(FLOW_ID,FLOW_NAME)
values('3','基金理财系统迁移');

--插入任务数据
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('3','1','事前检查','检查迁移准备情况，包括环境准备、数据库准备、网络调整、业务量确认等','0',to_date('20150414 21:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 21:30:00','yyyyMMdd HH24:Mi:SS'),'1','','');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('3','2','停止应用，应用打包，传至堡垒机','','0',to_date('20150414 22:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 22:10:00','yyyyMMdd HH24:Mi:SS'),'1','','');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('3','3','停原数据库，导出数据，直接传输','','0',to_date('20150414 22:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 22:10:00','yyyyMMdd HH24:Mi:SS'),'1','','2');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('3','4','锁定数据库用户','','0',to_date('20150414 22:40:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 22:45:00','yyyyMMdd HH24:Mi:SS'),'1','','3');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('3','5','应用VLAN切换','','0',to_date('20150414 22:40:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 22:50:00','yyyyMMdd HH24:Mi:SS'),'1','','3');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('3','6','启用NTP','','0',to_date('20150414 22:50:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 23:00:00','yyyyMMdd HH24:Mi:SS'),'1','','5');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('3','7','系统部署（含汉口服务器修改）','','0',to_date('20150414 22:50:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 23:20:00','yyyyMMdd HH24:Mi:SS'),'1','','5');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('3','8','数据库导入','','0',to_date('20150414 22:50:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 23:20:00','yyyyMMdd HH24:Mi:SS'),'1','','5');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('3','9','确认hkbdp权限','','0',to_date('20150414 23:20:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 23:30:00','yyyyMMdd HH24:Mi:SS'),'1','','8');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('3','10','启动应用','','0',to_date('20150414 23:20:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 23:30:00','yyyyMMdd HH24:Mi:SS'),'1','','8');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('3','10-1','修改理财同步程序中数据库地址','','0',to_date('20150414 23:20:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 23:30:00','yyyyMMdd HH24:Mi:SS'),'1','','8');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('3','11','VCS切换验证','','0',to_date('20150414 23:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 23:45:00','yyyyMMdd HH24:Mi:SS'),'1','','10');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('3','12','恢复抽数，抽数测试','','0',to_date('20150414 23:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150414 23:40:00','yyyyMMdd HH24:Mi:SS'),'1','','9');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('3','13','测试验证','包含企业客户','','0',to_date('20150414 23:45:00','yyyyMMdd HH24:Mi:SS'),to_date('20150415 00:45:00','yyyyMMdd HH24:Mi:SS'),'1','','11');


-- 插入用户数据
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('hs1011','郭燕','1','汉思公司','','15923123581','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('103753','颜伟','1','信息科技部','67802351','13437292178','hkbank');


-- 插入小组成员表
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('3', '1', '103964', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('3', '2', '104065', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('3', '2', '104184', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('3', '2', '105288', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('3', '3', '104277', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('3', '4', '103753', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('3', '5', 'hs1011', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('3', '6', '104726', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('3', '6', '103989', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('3', '7', '103813', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('3', '8', '104066', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('3', '9', '103988', '1');

-- 插入任务分配关系数据
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('3', '1', 'hs1011', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('3', '1', '104184', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('3', '2', 'hs1011', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('3', '2', '104184', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('3', '3', '104726', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('3', '4', '104726', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('3', '5', '104066', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('3', '6', '105288', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('3', '7', 'hs1011', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('3', '7', '104184', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('3', '8', '104726', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('3', '8', '105288', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('3', '9', '104726', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('3', '10', 'hs1011', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('3', '10', '104184', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('3', '10-1', 'hs1011', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('3', '10-1', '104184', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('3', '11', '105288', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('3', '12', '103989', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('3', '13', '103753', '1');