--插入流程数据
insert into flow(FLOW_ID,FLOW_NAME)
values('5','核心切换演练');

--插入任务数据
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','1','切换前准备工作','','0','1','','',to_date('20150421 20:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 21:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','1-1','系统环境切换前检查','包含mimix数据组、audit审计结果、静态数据组、应用库文件及目标的一致性、敏感文件数据内容的一致性','0','2','1','',to_date('20150422 20:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 21:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','1-2','默认参数修改','执行CHGCMDDFT CMD(QSYS/SAVOBJ) NEWDFT(‘TGTRLS(V6RIM0)’)修改默认参数','0','2','1','1-1',to_date('20150422 22:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 22:05:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','1-3','系统签退确认','包含个贷签退、核心签退、网点签退','0','2','1','',to_date('20150421 18:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 22:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','1-4','系统日终确认','包含个贷日终、理财资管日终、表外融资日终、现金管理日终','0','2','1','',to_date('20150422 21:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 22:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','1-5','日终跑批','','0','2','1','1-3,1-4',to_date('20150421 22:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150421 23:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','1-6','磁带备份','','0','2','1','1-5',to_date('20150421 23:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 01:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','1-7','确认I770PRD和I770GGPR数据一致性','确认自动修复是关闭状态，在I770PRD上手工提交MIMIX7/CMPFILDTA DGDFN(P2H)，等待审计结果，确认I770PRD和I770GGPR之间数据一致和完整','0','2','1','1-5',to_date('20150422 00:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 02:40:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','1-8','确认基础数据平台导数完成','','0','2','1','1-5',to_date('20150422 00:50:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 01:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','2','核心停机','','0','1','','', to_date('20150422 01:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 02:15:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','2-1','停止外围渠道类系统应用','停止CSP、ESB、支付系统、停中间业务批量','0','2','2','1-8',to_date('20150422 01:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 01:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','2-2','停止核心应用','停核心应用，在cdc管理机上停止cdc复制，停止cdc子系统。检查用户都退出。检查核心流水号','0','2','2','2-1',to_date('20150422 01:05:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 01:20:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','2-3','计划性切换P2H数据组（应用系统从I770PRD切换到I770GGPR）','','0','2','2','2-2',to_date('20150422 01:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 01:50:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','2-4','停止MIMIX相关数据组','','0','2','2','2-3',to_date('20150422 01:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 01:15:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','2-5','确认切换成功','','0','2','2','2-4',to_date('20150422 01:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 01:35:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','2-6','应用人员检查数据一致性','抽查一些重要表，检查数据一致','0','2','2','2-5',to_date('20150422 01:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 02:40:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','2-7','进行网络调整','关闭I770PRD生产IP地址,启用I570PRD备用IP','0','2','2','2-6',to_date('20150422 01:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 02:15:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','3','网络切换','','0','1','','',to_date('20150422 01:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 01:45:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','3-1','切换核心防火墙','切换核心防火墙','0','2','3','10',to_date('20150422 01:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 01:45:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','3-2','切204网关、后督系统网关','切204网关、后督系统网关','0','2','3','10',to_date('20150422 01:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 01:45:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','4','核心启动','','0','1','','',to_date('20150422 01:45:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 02:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','4-1','启动MIMIX数据组作业（光谷至香港路复制）','','0','2','4','3',to_date('20150422 01:45:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 02:50:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','4-2','启动核心应用系统','','0','2','4','4-1',to_date('20150422 01:55:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 02:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','4-3','启动ATM','单启动一台营业部ATM','0','2','4','4-1',to_date('20150422 01:55:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 02:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','5','技术验证、业务验证','','0','1','','',to_date('20150422 01:55:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 02:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','5-1','通过ATM进行验证','包含查询内部账、ATM存取款、勾兑、扎帐','0','2','5','4',to_date('20150422 01:55:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 02:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','5-2','线路连通性验证（ping 200.0.200.20和200.0.200.22）','包含：192.168.5.18-外币汇率实时数据数据库；192.168.5.96-MIS系统；200.0.198.31-验印生产机；200.0.198.*-网点前置；200.0.201.*-本地OMS备份线路；200.1.201.*-西安异地OMS备份线路；200.0.1.218-综合前置；200.0.3.*-esb','0','2','5','3',to_date('20150422 01:55:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 02:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','5-3','核心防火墙端口验证','','0','2','5','3',to_date('20150422 01:55:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 02:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','5-4','信贷系统验证','查询客户保证金余额是否正常','0','2','5','4',to_date('20150422 01:55:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 02:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','5-5','基础数据平台抽数验证','基础数据平台抽数验证','0','2','5','4',to_date('20150422 01:55:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 02:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','6','业务验证完毕，切换成功,开始回切','','0','1','','',to_date('20150422 02:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 02:20:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','7','核心停机','','0','1','','',to_date('20150422 02:20:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 03:35:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','7-1','停止外围渠道类应用系统','','0','2','7','5',to_date('20150422 02:20:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 03:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','7-2','停止核心应用','停核心应用，在cdc管理机上停止cdc复制，停止cdc子系统。检查用户都退出。','0','2','7','5',to_date('20150422 02:25:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 03:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','7-3','停止cdc','','0','2','7','7-2',to_date('20150422 02:25:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 03:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','7-4','检查','主机停子系统后，查询并记录最大主机流水号，主备机是否一致。','0','2','7','7-2',to_date('20150422 02:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 02:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','7-5','回切P2H数据组（应用系统从I770GGPR切换到I770PRD）','','0','2','7','7-2',to_date('20150422 02:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 02:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','7-6','停止MIMIX相关数据组','','0','2','7','7-2',to_date('20150422 02:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 03:25:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','7-7','确认切换成功','','0','2','7','',to_date('20150422 02:55:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 02:55:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','7-8','应用人员检查数据一致性','抽查一些重要表，检查数据一致','0','2','7','7-7',to_date('20150422 02:55:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 03:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','7-9','进行网络调整','关闭I770GGPR生产IP地址，启用I770PRD生产IP，启用I770GGBK备用IP，启用I570PRD备用IP','0','2','7','7-8',to_date('20150422 03:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 03:35:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','8','核心启动','','0','1','','',to_date('20150422 03:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 03:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','8-1','启动核心应用系统进行验证','','0','2','8','7',to_date('20150422 03:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 03:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','8-2','启动核心应用','','0','2','8','7',to_date('20150422 03:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 03:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','8-3','启动cdc并做技术验证','','0','2','8','7',to_date('20150422 03:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 03:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','9','第二次验证','','0','1','','',to_date('20150422 03:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 04:15:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','9-1','柜面验证','柜面交易验证','0','2','9','8',to_date('20150422 03:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 03:20:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','9-2','启动外围渠道类应用','启动CSP、ESB、全面启动ATM、支付系统、中间业务批量','0','2','9','9-1',to_date('20150422 03:20:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 03:45:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','9-3','ATM验证','营业部ATM验证','0','2','9','9-2',to_date('20150422 03:20:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 03:45:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','9-4','电子渠道验证','','0','2','9','9-3',to_date('20150422 03:20:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 03:45:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','9-5','核心防火墙端口验证','','0','2','9','8',to_date('20150422 03:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 03:45:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','9-6','线路连通性验证（ping 200.0.200.20和200.0.200.22）','包含：192.168.5.18-外币汇率实时数据数据库；192.168.5.96-MIS系统；200.0.198.31-验印生产机；200.0.198.*-网点前置；200.0.201.*-本地OMS备份线路；200.1.201.*-西安异地OMS备份线路；200.0.1.218-综合前置；200.0.3.*-esb','0','2','9','8',to_date('20150422 03:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 03:45:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','9-7','信贷系统验证','查询客户保证金余额是否正常','0','2','9','',to_date('20150422 03:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 03:45:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','9-8','基础数据平台抽数验证','','0','2','9','',to_date('20150422 03:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 04:15:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','10','启动MIMIX数据组作业','启动I770GGPR到I770PRD的RJ Link，启动P2H数据组作业（I770GGPR>I770PRD），观察P2H数据组状态是否正常','0','1','','',to_date('20150422 03:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 04:20:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('5','11','验证完成，回切完毕','','0','1','','',to_date('20150422 04:15:00','yyyyMMdd HH24:Mi:SS'),to_date('20150422 04:15:00','yyyyMMdd HH24:Mi:SS'));


-- 插入用户数据
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('HS1050','杨浩','1','汉思公司','','','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('102179','吴波','1','会计结算部','','','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('101366','吴娟','1','营运部','','','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('102835','张婷','1','信息科技部','','','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('103489','张浩','1','信息科技部','','','hkbank');



-- 插入小组成员表
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '1', '103964', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '1', '103635', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '1', '103792', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '2', '104065', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '2', '104184', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '2', '105288', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '3', '104277', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '4', '101483', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '4', '104063', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '4', '102835', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '4', '105189', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '4', '103489', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '4', 'HS1050', '0');


insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '5', '103109', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '5', '103872', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '5', '104634', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '5', '104067', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '5', '104186', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '5', '104352', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '5', '104185', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '5', '103873', '0');


insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '6', '104726', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '6', '103989', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '7', '103813', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '7', '105427', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '8', '104066', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '8', '105076', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('5', '9', '103988', '1');


-- 插入任务分配关系数据
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '1', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '1-1', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '1-1', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '1-2', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '1-2', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '1-3', 'TEMP03', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '1-3', 'TEMP01', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '1-3', 'TEMP02', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '1-4', 'TEMP03', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '1-4', 'TEMP01', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '1-4', '104634', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '1-4', '105189', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '1-5', 'TEMP03', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '1-6', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '1-6', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '1-6', '104186', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '1-6', '104067', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '1-7', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '1-7', '103872', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '1-8', '103989', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '1-8', '104352', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '2', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '2-1', '104185', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '2-1', '103873', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '2-2', '104067', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '2-2', '104186', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '2-3', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '2-3', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '2-4', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '2-4', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '2-5', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '2-5', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '2-6', '104067', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '2-6', '104186', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '2-7', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '2-7', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '3', '104066', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '3-1', '104277', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '3-2', '104066', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '4', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '4-1', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '4-1', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '4-2', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '4-2', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '4-3', '103873', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '5', '104065', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '5-1', '103489', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '5-2', '104066', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '5-2', '103989', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '5-2', '104677', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '5-2', '103971', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '5-2', '104067', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '5-2', '104186', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '5-2', '103873', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '5-3', '104277', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '5-4', '104677', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '5-4', '104908', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '5-5', '103989', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '5-5', '104352', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '6', '104065', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '7', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '7-1', '104185', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '7-1', '103873', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '7-2', '104067', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '7-2', '104186', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '7-3', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '7-3', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '7-4', '104067', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '7-4', '104186', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '7-5', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '7-5', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '7-6', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '7-6', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '7-7', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '7-7', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '7-8', '104067', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '7-8', '104186', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '7-9', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '7-9', '103872', '0');

insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '8', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '8-1', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '8-1', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '8-2', '104067', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '8-2', '104186', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '8-3', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '8-3', '103872', '0');

insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '9', '104065', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '9-1', '103489', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '9-2', '104185', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '9-2', '103873', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '9-3', 'HS1050', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '9-4', '104063', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '9-5', '104277', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '9-6', '104066', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '9-6', '103989', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '9-6', '104677', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '9-6', '103971', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '9-6', '104067', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '9-6', '104186', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '9-6', '103873', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '9-7', '104677', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '9-7', '104908', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '9-8', '103989', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '9-8', '104352', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '10', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '10', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('5', '11', '104065', '1');