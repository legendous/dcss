--插入流程数据
insert into flow(FLOW_ID,FLOW_NAME)
values('6','集中提入&流程银行');

--插入任务数据
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','1','集中提入：确认业务已终止，电话通知科技部','','0','1','','',to_date('20150421 17:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 17:15:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','2','集中提入：确认业务已终止，停止应用','','0','1','','1',to_date('20150421 17:15:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 17:25:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','3','集中提入：修改原APP服务器地址为临时地址200.0.198.202','','0','1','','2',to_date('20150421 17:25:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 17:35:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','4','集中提入：本月应用影像文件复制','','0','1','','2',to_date('20150421 17:25:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 18:25:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','5','集中提入：数据导出','停原数据库，导出数据，传至堡垒机','0','1','','2',to_date('20150421 17:25:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 18:45:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','6','集中提入：数据导入','','0','1','','5',to_date('20150421 18:45:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 20:05:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','7','集中提入：启动应用','','0','1','','6',to_date('20150421 20:05:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 20:25:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','8','集中提入：技术验证','恢复抽数，抽数测试','0','1','','7',to_date('20150421 20:25:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 20:35:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','9','集中提入：业务验证','通知营业部、营运部测试，进行测试验证','0','1','','8',to_date('20150421 20:35:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 21:35:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','10','集中提入：营业部扎帐，终了当日业务','','0','1','','9',to_date('20150421 21:35:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 21:55:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','11','流程银行:处理完当日所有业务，通知科技部准备停机','','0','1','','',to_date('20150421 17:45:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 17:45:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','12','流程银行:停止应用','保存重要日志备份至日志机','0','1','','11',to_date('20150421 17:45:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 17:55:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','13','流程银行:保存重要日志备份至日志机','','0','1','','12',to_date('20150421 17:55:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 18:15:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','14','流程银行:相关虚拟机迁移','','0','1','','12',to_date('20150421 17:55:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 18:35:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','15','流程银行:导数','停原数据库，导出数据，传至堡垒机','0','1','','12',to_date('20150421 17:55:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 18:35:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','16','流程银行:应用、数据库服务器VLAN切换','','0','1','','15',to_date('20150421 18:35:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 18:55:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','17','流程银行:启用NTP','','0','1','','16',to_date('20150421 18:55:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 19:05:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','18','流程银行:数据导入','','0','1','','16',to_date('20150421 18:55:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 19:45:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','19','流程银行:启动应用','','0','1','','18',to_date('20150421 19:45:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 20:05:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','20','流程银行:VCS切换验证','','0','1','','19',to_date('20150421 20:05:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 20:25:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','21','流程银行:恢复抽数，抽数测试','','0','1','','20',to_date('20150421 20:25:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 20:35:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','22','流程银行:通知营业部、营运部测试，进行测试验证','','0','1','','20',to_date('20150421 20:25:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 21:25:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('6','23','流程银行:剩余历史影像文件复制','','0','1','','',to_date('20150421 21:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 00:00:00','yyyyMMdd HH24:Mi:SS'));


-- 插入用户数据
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104870','王伟','1','信息科技部','','','hkbank');


-- 插入小组成员表
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('6', '1', '103964', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('6', '1', '103635', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('6', '1', '103792', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('6', '2', '104065', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('6', '2', '104184', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('6', '2', '105288', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('6', '3', '104277', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('6', '4', '101483', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('6', '4', '102835', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('6', '4', '102179', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('6', '4', '101366', '0');

insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('6', '5', '103872', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('6', '5', '104870', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('6', '5', '104352', '0');

insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('6', '6', '104726', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('6', '6', '103989', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('6', '7', '103813', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('6', '7', '103971', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('6', '8', '104066', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('6', '9', '103988', '1');


-- 插入任务分配关系数据
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '1', '101366', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '2', '103872', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '2', '104184', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '3', '103872', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '3', '104184', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '4', '103872', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '4', '104184', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '5', '104726', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '5', '105288', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '6', '104726', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '6', '105288', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '7', '103872', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '7', '104184', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '8', '103989', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '9', '102835', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '9', '101366', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '9', '102179', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '10', '102179', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '11', '101366', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '12', '104870', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '12', '104184', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '12', '104352', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '13', '104870', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '13', '104184', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '14', '103971', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '14', '104352', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '14', '104870', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '15', '104726', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '15', '105288', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '16', '104066', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '17', '105288', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '18', '104726', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '18', '105288', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '19', '104870', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '19', '104184', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '19', '104352', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '20', '105288', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '20', '104184', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '21', '103989', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '22', '102835', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '22', '101366', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '22', '102179', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('6', '23', '103872', '1');
