begin

--插入流程数据
insert into flow(FLOW_ID,FLOW_NAME)
values('7','核心 & 网银切换演练');

--插入任务数据
insert into task(FLOW_ID, TASK_ID, TASK_NAME, TASK_CONTENT, TASK_STAT, TASK_LEVEL, PARENT_TASK_ID, FRONT_TASK_ID, TASK_BEGIN_TIME_PLAN, TASK_END_TIME_PLAN)
values('7','1','信息系统切换工作汇报','','0','1','','',to_date('20150424 18:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150424 20:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','2','领导宣布：核心切换开始','','0','1','','',to_date('20150424 20:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150424 20:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','3','第五批虚拟机切换','','0','1','','2',to_date('20150424 20:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150424 22:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','4','系统环境切换前检查','检查敏感文件数据内容、其它应用库文件及目标的一致性','0','1','','2',to_date('20150424 20:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150424 22:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','5','各系统签退及日终批量处理','','0','1','','',to_date('20150424 20:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150424 23:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','5-1','签退完成','包含个贷系统、核心、网点签退','0','2','5','2',to_date('20150424 20:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150424 21:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','5-2','其他系统日终批量完成','包含个贷系统、理财资管系统、表外融资系统、现金管理平台系统的日终批量','0','2','5','2',to_date('20150424 21:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150424 22:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','5-3','核心日终批量','','0','2','5','5-1,5-2',to_date('20150424 22:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150424 23:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','5-4','修改磁带备份次数为1次','','0','2','5','5-3',to_date('20150424 22:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150424 22:05:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','5-5','日终磁带备份','','0','2','5','5-4',to_date('20150424 23:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 01:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','6','停止渠道及核心应用','','0','1','','',to_date('20150425 01:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 01:15:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','6-1','停止外围渠道类系统应用','csp、支付、中间业务批量、关闭所有ATM','0','2','6','5',to_date('20150425 01:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 01:05:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','6-2','确认基础数据平台导数完成','','0','2','6','',to_date('20150425 00:50:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 01:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','6-3','停止核心应用','停核心应用、在cdc管理机上停止cdc复制、停止cdc子系统。检查用户都退出','0','2','6','5',to_date('20150425 01:05:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 01:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','6-4','停机后检查','主机停子系统后、查询并记录最大主机流水号、查看流水是否完整','0','2','6','6-3',to_date('20150425 01:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 01:15:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','7','网关切换','','0','1','','',to_date('20150425 01:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 02:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','8','外联防火墙切换','','0','1','','',to_date('20150425 01:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 02:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','9','负载均衡器切换','','0','1','','',to_date('20150425 01:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 02:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','10','网银系统切换','','0','1','','',to_date('20150425 01:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 03:40:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','10-1','网银停应用','','0','2','10','',to_date('20150425 01:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 01:20:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','10-2','数据库导出、复制、导入、启动','','0','2','10','10-1',to_date('20150425 01:20:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 03:20:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','10-3','相关虚拟机复制','','0','2','10','10-1',to_date('20150425 01:20:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 03:20:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','10-4','网银启动应用','','0','2','10','10-2,10-3',to_date('20150425 03:20:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 03:40:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','11','核心系统切换','','0','1','','',to_date('20150425 01:15:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 02:15:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','11-1','P2H数据组切换','应用系统从I770PRD切换到I770GGPR','0','2','11','6',to_date('20150425 01:15:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 01:50:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','11-2','核心IP地址调整','关闭I770PRD生产IP地址、启用I770GGPR生产IP、启用I570PRD备用IP、启用I770GGBK备用IP','0','2','11','6',to_date('20150425 01:50:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 02:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','11-3','启动MIMIX数据组作业','','0','2','11','6',to_date('20150425 02:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 02:15:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','12','核心系统应用启动及内部验证','','0','1','','',to_date('20150425 02:15:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 02:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','12-1','启动核心应用','启动核心应用及cdc、并做技术验证','0','2','12','11',to_date('20150425 02:15:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 02:20:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','12-2','启动单台营业部ATM','','0','2','12','12-1',to_date('20150425 02:20:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 02:25:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','12-3','柜面主要交易验证','准备会计柜员、做签到以及主要柜面交易验证（查询内部账、存取款、勾兑、扎帐）','0','2','12','12-1',to_date('20150425 02:20:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 02:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','12-4','ATM验证','营业部ATM验证','0','2','12','12-2',to_date('20150425 02:25:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 02:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','12-5','线路连通性验证','包含汇率、MIS、验印、网点、西安、前置、ESB等','0','2','12','12-1',to_date('20150425 02:15:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 02:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','12-6','信贷系统验证','查询客户保证金余额是否正常','0','2','12','12-1',to_date('20150425 02:15:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 02:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','12-7','基础数据平台抽数验证','','0','2','12','12-1',to_date('20150425 02:15:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 02:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','13','外围渠道类系统启动及验证','','0','1','','',to_date('20150425 02:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 04:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','13-1','启动渠道类应用','启动csp、支付、恢复中间业务批量、放开所有ATM','0','2','13','12',to_date('20150425 02:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 02:40:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','13-2','卡业务验证','','0','2','13','13',to_date('20150425 02:40:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 04:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','13-3','柜面业务验证','','0','2','13','13',to_date('20150425 02:40:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 04:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','13-4','流程银行验证','','0','2','13','13',to_date('20150425 02:40:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 04:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','13-5','电子渠道业务验证','','0','2','13','10,13',to_date('20150425 03:40:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 05:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','13-6','信贷管理系统验证','','0','2','13','13',to_date('20150425 02:40:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 04:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','13-7','国际结算业务验证','','0','2','13','13',to_date('20150425 02:40:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 04:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','13-8','资金系统验证','','0','2','13','13',to_date('20150425 02:40:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 04:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','14','切换后续工作','','0','1','','',to_date('20150425 02:40:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 02:55:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','14-1','调整MIMIX日志策略','','0','2','14','12',to_date('20150425 02:40:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 02:45:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','14-2','日终跑批程序检查','','0','2','14','12',to_date('20150425 02:50:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 02:55:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('7','15','领导宣布：核心切换完成！','','0','1','','',to_date('20150425 08:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150425 08:40:00','yyyyMMdd HH24:Mi:SS'));


-- 插入用户数据
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('101040','刘江娇','1','信息科技部','67803558','13807111972','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('105008','马光宇','1','信息科技部','67803089','18062671712','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('101073','曾庆柏','1','信息科技部','67803170','13971554478','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104439','黄巍立','1','信息科技部','67803527','13317103223','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104664','张子剑','1','信息科技部','67803727','13628699971','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104362','周军伟','1','信息科技部','67803854','18963978301','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104912','孙强','1','信息科技部','67803442','13554457785','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104616','徐焕钦','1','信息科技部','67803947','18627179286','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104350','赵智伟','1','信息科技部','67803850','18963978285','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104663','辜志明','1','信息科技部','67803091','18963978309','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('105282','陈柯','1','信息科技部','67803083','13720120607','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('HS1058','张樯','1',' 汉思公司','','13907187670','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('HS1037','王亮','1',' 汉思公司','','18611975563','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('103463','罗琛','1','信息科技部','67803720','18963978317','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('102778','吴凌','1',' 会计结算部','82656754','18963978037','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('102325','胡超','1',' 会计结算部','','13638676709','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('101239','徐娟','1',' 营运部','82656227','','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104592','魏欣','1',' 零售银行部','82656963','','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104286','周硕','1',' 零售银行部','82656740','18627121835','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104570','王汉维','1',' 电子银行部','82656938','','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('109266','李恒','1',' 电子银行部','82656944','18672318382','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('103987','陈里','1',' 公司银行部','82656965','','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('103157','张静','1',' 金融市场部','82656451','18627996660','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('103350','虞兰','1',' 信贷管理部','','','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104532','李瑞志','1',' 信贷管理部','82656824','15926302645','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('000000',' ','1','','','','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('TEMP04','零售银行部','1',' 零售银行部','','','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('TEMP05','营运部','1',' 营运部','','','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('TEMP06','电子银行部','1',' 电子银行部','','','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('TEMP07','信贷管理部','1',' 信贷管理部','','','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('TEMP08','公司银行部','1',' 公司银行部','','','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('101102','佟克畏','1','汉荣公司','82656988','13986226788','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('101870','谢龙','1','汉荣公司','82656367','13971368000','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('101167','李幼林','1','汉荣公司','','13871300747','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('102780','耿浩','1','汉荣公司','','13871266886','hkbank');


-- 插入小组成员表
--1 指挥组
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '1', '103964', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '1', '103635', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '1', '103792', '0');
--2 灾备组
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '2', '104065', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '2', '104184', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '2', '105288', '0');
--3 安全组
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '3', '104277', '1');
--4 测试组
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '4', '101483', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '4', '103463', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '4', '104063', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '4', '102179', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '4', '102778', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '4', '101366', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '4', '102325', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '4', '101239', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '4', '104592', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '4', '104286', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '4', '104570', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '4', '105315', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '4', '109266', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '4', '103987', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '4', '103157', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '4', '103350', '1');


--5 应用组
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '5', '103109', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '5', '104439', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '5', '104634', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '5', '104908', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '5', '104677', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '5', '103872', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '5', '104186', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '5', '104350', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '5', '104912', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '5', '104067', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '5', '104185', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '5', '104937', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '5', '103873', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '5', '105276', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '5', '104803', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '5', '104772', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '5', '105284', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '5', '104352', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '2', 'HS1037', '0');

--6 数据组
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '6', '104726', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '6', '103989', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '6', '104362', '0');
--7 系统组
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '7', '103813', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '7', '103971', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '7', '105427', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '7', '104664', '0');
--8 网络组
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '8', '104066', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '8', '105076', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '8', '104616', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '8', 'HS1058', '0');
--9 监控组
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '9', '103988', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '9', '105282', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '9', '104663', '1');
--10 后勤保障组
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '10', '101870', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '10', '101167', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('7', '10', '102780', '1');

-- 插入任务分配关系数据
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '1', '000000', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '2', '000000', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '3', '103971', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '4', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '5', 'TEMP03', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '5-1', 'TEMP03', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '5-1', '105189', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '5-1', '102179', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '5-2', 'TEMP03', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '5-2', '105189', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '5-2', '104908', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '5-3', 'TEMP03', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '5-4', '104067', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '5-4', '104186', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '5-5', 'TEMP03', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '6', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '6-1', '104185', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '6-1', '103873', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '6-2', '103989', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '6-2', '104352', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '6-3', '104067', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '6-3', '104186', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '6-4', '104067', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '6-4', '104186', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '7', '104066', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '8', '104277', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '9', '105076', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '10', '104772', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '10-1', '104772', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '10-1', '104184', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '10-2', '104726', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '10-2', '105288', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '10-3', '103971', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '10-3', '105427', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '10-4', '104772', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '10-4', '104184', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '11', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '11-1', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '11-1', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '11-2', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '11-2', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '11-3', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '11-3', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '12', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '12-1', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '12-1', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '12-1', '104067', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '12-1', '104186', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '12-2', '103873', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '12-3', 'TEMP02', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '12-3', '102179', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '12-3', '102778', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '12-3', '102325', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '12-4', '101483', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '12-5', '104066', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '12-5', '103989', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '12-5', '104677', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '12-5', '103971', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '12-5', '104067', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '12-5', '104186', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '12-5', '103873', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '12-6', '104677', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '12-6', '104908', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '12-7', '103989', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '12-7', '104352', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13', '000000', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13-1', '104185', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13-1', '103873', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13-2', 'TEMP04', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13-2', '104592', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13-2', '104286', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13-3', 'TEMP02', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13-3', '102179', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13-3', '102778', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13-3', '102325', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13-4', 'TEMP05', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13-4', '101366', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13-4', '101239', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13-5', 'TEMP06', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13-5', '104570', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13-5', '105315', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13-5', '109266', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13-6', 'TEMP07', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13-6', '103350', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13-7', 'TEMP08', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13-7', '103987', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13-8', 'TEMP01', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '13-8', '103157', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '14', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '14-1', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '14-1', '102325', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '14-2', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '14-2', '102325', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('7', '15', '000000', '1');

end;