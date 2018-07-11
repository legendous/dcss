begin

--插入流程数据
insert into flow(FLOW_ID, FLOW_NAME) values('9','汉口银行2015年年终结转');

--插入任务数据
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','1','年结准备工作','','0','1','','',to_date('20151230 00:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20151230 00:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','1-1','财务系统年结演练','','0','2','1','',to_date('20151230 00:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20151230 00:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','1-2','关联系统联调测试','','0','2','1','',to_date('20151230 00:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20151230 00:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','2','年结前序工作','','0','1','','',to_date('20151230 00:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20151230 00:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','2-1','确认信用卡年末账务并账方式','','0','2','2','',to_date('20151230 00:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20151230 00:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','2-2','贷款预计现金流录入','','0','2','2','',to_date('20151230 00:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20151230 00:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','2-3','基金、理财工作日配置','','0','2','2','',to_date('20151230 00:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20151230 00:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','2-4','第三方业务截止时间确认','','0','2','2','',to_date('20151230 00:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20151230 00:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','2-5','客户关联数同步','','0','2','2','',to_date('20151230 00:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20151230 00:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','2-6','核心年终前磁带备份','','0','2','2','',to_date('20151230 00:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20151230 00:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','3','12月31日步骤','','0','1','','',to_date('20151231 09:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20160101 00:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','3-1','各系统年终结转前数据、系统状态监控检查','','0','2','3','',to_date('20151231 09:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20151231 23:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','3-2','财务系统小总账月结','','0','2','3','',to_date('20151231 20:50:00','yyyyMMdd HH24:Mi:SS'),to_date('20151231 23:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','3-3','核心系统年终','','0','2','3','',to_date('20151231 23:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20160101 00:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','4','1月1日步骤','','0','1','','',to_date('20160101 01:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20160101 11:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','4-1','核心系统年转数据检查','','0','2','4','',to_date('20160101 01:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20160101 01:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','4-2','渠道和业务功能开启','','0','2','4','',to_date('20160101 01:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20160101 01:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','4-3','关键批量监控','','0','2','4','',to_date('20160101 02:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20160101 04:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','4-4','大总账12月月结','','0','2','4','',to_date('20160101 05:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20160101 05:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','4-5','损益确认及财务系统中账务调整','','0','2','4','',to_date('20160101 07:20:00','yyyyMMdd HH24:Mi:SS'),to_date('20160101 07:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','4-6','小总账年结','','0','2','4','',to_date('20160101 07:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20160101 08:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','4-7','大总账年结','','0','2','4','',to_date('20160101 07:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20160101 08:40:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','4-8','批量监控','','0','2','4','',to_date('20160101 08:50:00','yyyyMMdd HH24:Mi:SS'),to_date('20160101 10:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','4-9','对外营业','','0','2','4','',to_date('20160101 08:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20160101 08:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) 
          values('9','4-10','财务系统备份','','0','2','4','',to_date('20160101 11:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20160101 11:00:00','yyyyMMdd HH24:Mi:SS'));


--插入用户数据
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) 
           values('BM0001','信息科技部','1','信息科技部','','','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) 
           values('BM0002','计划财务部','1','计划财务部','','','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) 
           values('BM0003','会计结算部','1','会计结算部','','','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) 
           values('BM0004','金融市场部','1','金融市场部','','','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) 
           values('BM0005','零售银行部','1','零售银行部','','','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) 
           values('BM0006','信贷管理部','1','信贷管理部','','','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) 
           values('BM0007','营运部','1','营运部','','','hkbank');


--插入分组数据
insert into team values('99','99','年终结转小组');

--插入小组成员表
--1 年终结转小组
insert into teamers values('9','99','BM0001','5');
insert into teamers values('9','99','BM0002','6');
insert into teamers values('9','99','BM0003','3');
insert into teamers values('9','99','BM0004','0');
insert into teamers values('9','99','BM0005','1');
insert into teamers values('9','99','BM0006','2');
insert into teamers values('9','99','BM0007','4');


--插入任务分配关系数据
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '1', 'BM0001', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '1-1', 'BM0001', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '1-1', 'BM0002', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '1-2', 'BM0001', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '1-2', 'BM0003', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '1-2', 'BM0004', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '2', 'BM0001', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '2-1', 'BM0005', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '2-2', 'BM0006', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '2-2', 'BM0002', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '2-3', 'BM0001', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '2-4', 'BM0001', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '2-5', 'BM0001', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '3', 'BM0001', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '3-1', 'BM0001', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '3-1', 'BM0003', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '3-1', 'BM0007', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '3-1', 'BM0004', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '3-1', 'BM0002', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '3-1', 'BM0005', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '3-1', 'BM0006', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '3-2', 'BM0001', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '3-3', 'BM0002', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '3-3', 'BM0001', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '4', 'BM0001', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '4-1', 'BM0003', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '4-2', 'BM0001', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '4-2', 'BM0003', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '4-2', 'BM0007', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '4-3', 'BM0001', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '4-4', 'BM0002', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '4-4', 'BM0001', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '4-5', 'BM0002', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '4-6', 'BM0002', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '4-6', 'BM0001', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '4-7', 'BM0002', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '4-7', 'BM0001', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '4-8', 'BM0001', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '4-9', 'BM0003', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '4-9', 'BM0001', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('9', '4-10', 'BM0001', '1');

end;