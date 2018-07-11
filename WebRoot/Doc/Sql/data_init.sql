--插入流程数据
insert into flow(FLOW_ID,FLOW_NAME)
values('1','网银系统迁移');

--插入任务数据
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
	,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','1','事前检查','检查迁移准备情况，包括环境准备、数据库准备、网络调整、业务量确认等','0',to_date('20150426 22:00:00','yyyyMMdd HH24:Mi:SS')
	,to_date('20150426 22:50:00','yyyyMMdd HH24:Mi:SS'),null,null,'1','','');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
	,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','2','向领导报告','由负责人向领导报告迁移准备情况，并请示是否可与23:00准时开始进行迁移','0',to_date('20150426 22:50:00','yyyyMMdd HH24:Mi:SS')
	,to_date('20150426 22:55:00','yyyyMMdd HH24:Mi:SS'),null,null,'1','','1');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
	,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','3','WEB、应用停机','停止所有网银应用，包含网上银行、手机银行、企网查询对账版、体验区白名单、网银管理端、批处理等程序及WEB服务','0',to_date('20150426 23:00:00','yyyyMMdd HH24:Mi:SS')
    ,to_date('20150426 23:20:00','yyyyMMdd HH24:Mi:SS'),null,null,'1','','2');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
    ,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','4','虚拟机复制','将虚拟机从汉口复制到光谷','0',to_date('20150426 23:20:00','yyyyMMdd HH24:Mi:SS')
    ,to_date('20150427 01:00:00','yyyyMMdd HH24:Mi:SS'),null,null,'1','','3');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
    ,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','5','个网应用VLAN切入生产','将模拟测试环境中的个网APP切入到生产VLAN，IP地址有变化，与原地址不冲突','0',to_date('20150426 23:30:00','yyyyMMdd HH24:Mi:SS')
    ,to_date('20150426 23:35:00','yyyyMMdd HH24:Mi:SS'),null,null,'1','','3');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
    ,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','6','数据迁移','将网银数据由汉口中心移至光谷中心','0',to_date('20150426 23:20:00','yyyyMMdd HH24:Mi:SS')
    ,to_date('20150426 23:10:00','yyyyMMdd HH24:Mi:SS'),null,null,'1','','3');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
    ,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','6-1','监听进程停止','停止网银数据库监听进程，以保证数据不再变动','0',to_date('20150426 23:20:00','yyyyMMdd HH24:Mi:SS')
    ,to_date('20150426 23:25:00','yyyyMMdd HH24:Mi:SS'),null,null,'2','6','3');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
    ,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','6-2','数据导出','通过数据泵工具将数据导出至网银数据库本机','0',to_date('20150426 23:25:00','yyyyMMdd HH24:Mi:SS')
    ,to_date('20150427 00:00:00','yyyyMMdd HH24:Mi:SS'),null,null,'2','6','6-1');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
    ,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','6-3','数据传输','通过FTP工具将数据dmp文件从汉口传输至光谷数据库服务器本机','0',to_date('20150427 00:00:00','yyyyMMdd HH24:Mi:SS')
    ,to_date('20150427 00:30:00','yyyyMMdd HH24:Mi:SS'),null,null,'2','6','6-2');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
    ,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','6-4','数据导入','将dmp文件导入光谷网银数据库','0',to_date('20150427 00:30:00','yyyyMMdd HH24:Mi:SS')
    ,to_date('20150427 01:00:00','yyyyMMdd HH24:Mi:SS'),null,null,'2','6','6-3');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
    ,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','6-4-1','子任务一','可扩展子任务一','0',to_date('20150427 00:30:00','yyyyMMdd HH24:Mi:SS')
    ,to_date('20150427 01:00:00','yyyyMMdd HH24:Mi:SS'),null,null,'3','6-4','6-3');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
    ,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','6-5','数据验证','查询两中心流水表等较大表记录数，通过比对验证数据完整性','0',to_date('20150427 01:00:00','yyyyMMdd HH24:Mi:SS')
    ,to_date('20150427 01:10:00','yyyyMMdd HH24:Mi:SS'),null,null,'2','6','6-4');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
    ,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','6-5-1','检查网银交易流水表','','0',to_date('20150427 01:00:00','yyyyMMdd HH24:Mi:SS')
    ,to_date('20150427 01:10:00','yyyyMMdd HH24:Mi:SS'),null,null,'3','6-5','6-4');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
    ,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','6-5-2','检查网银登陆流水表','','0',to_date('20150427 01:00:00','yyyyMMdd HH24:Mi:SS')
    ,to_date('20150427 01:10:00','yyyyMMdd HH24:Mi:SS'),null,null,'3','6-5','6-4');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
    ,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','6-6','汉口数据库VLAN切出','将汉口数据库VLAN切出生产','0',to_date('20150427 01:10:00','yyyyMMdd HH24:Mi:SS')
    ,to_date('20150427 01:15:00','yyyyMMdd HH24:Mi:SS'),null,null,'2','6','6-5');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
    ,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','6-7','光谷数据库VLAN切入','将光谷数据库VLAN切入生产','0',to_date('20150427 01:15:00','yyyyMMdd HH24:Mi:SS')
    ,to_date('20150427 01:20:00','yyyyMMdd HH24:Mi:SS'),null,null,'2','6','6-6');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
    ,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','7','修改应用数据库指向','修改应用程序、WAS的DB配置，使其指向新的光谷网银数据库','0',to_date('20150427 01:20:00','yyyyMMdd HH24:Mi:SS')
    ,to_date('20150427 01:40:00','yyyyMMdd HH24:Mi:SS'),null,null,'2','','4,5,6');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
    ,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','8','应用启动','启动所有应用，但不包含WEB，以免客户登陆','0',to_date('20150427 01:40:00','yyyyMMdd HH24:Mi:SS')
    ,to_date('20150427 02:00:00','yyyyMMdd HH24:Mi:SS'),null,null,'1','','7');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
    ,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','9','业务验证一','对网银所有应用进行业务验证','0',to_date('20150427 02:00:00','yyyyMMdd HH24:Mi:SS')
    ,to_date('20150427 02:30:00','yyyyMMdd HH24:Mi:SS'),null,null,'1','','8');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
    ,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','10','网络调整','','0',to_date('20150427 02:30:00','yyyyMMdd HH24:Mi:SS')
    ,to_date('20150427 02:50:00','yyyyMMdd HH24:Mi:SS'),null,null,'1','','9');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
    ,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','10-1','智能DNS调整','将请求按策略发至汉口和光谷中心','0',to_date('20150427 02:30:00','yyyyMMdd HH24:Mi:SS')
    ,to_date('20150427 02:50:00','yyyyMMdd HH24:Mi:SS'),null,null,'1','10','9');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
    ,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','10-2','网关调整','将105和107网段网关调整至光谷','0',to_date('20150427 02:30:00','yyyyMMdd HH24:Mi:SS')
    ,to_date('20150427 02:50:00','yyyyMMdd HH24:Mi:SS'),null,null,'1','10','9');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
    ,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','11','业务验证二','重点验证是否可双中心访问','0',to_date('20150427 02:50:00','yyyyMMdd HH24:Mi:SS')
    ,to_date('20150427 03:10:00','yyyyMMdd HH24:Mi:SS'),null,null,'1','','10');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_BEGIN_TIME_PLAN
    ,TASK_END_TIME_PLAN,TASK_BEGIN_TIME_REAL,TASK_END_TIME_REAL,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID)
values('1','12','汇报','向领导小组汇报本次迁移完成情况','0',to_date('20150427 03:10:00','yyyyMMdd HH24:Mi:SS')
    ,to_date('20150427 03:30:00','yyyyMMdd HH24:Mi:SS'),null,null,'1','','11');
    

-- 插入用户数据
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('103964','许宁','1','信息科技部','67803743','13971115595','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104065','杨志','1','信息科技部','67803715','18942906840','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104184','徐扬','1','信息科技部','67803350','18963978275','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('105288','鲁雄锋','1','信息科技部','67803811','15827642867','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104277','潘成斌','1','信息科技部','67803700','13871424909','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('101483','凃波','1','信息科技部','67803477','18963978318','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104063','夏光','1','信息科技部','67803104','18986268876','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('105315','万元元','1','电子银行部','','18571552105','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104772','周鹏','1','信息科技部','67803844','15927397345','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('105284','刘丹妮','1','信息科技部','67803844','15927397345','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104726','王扬','1','信息科技部','67803854','18964979552','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('103813','刘晖','1','信息科技部','67803463','13296580896','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('103971','姚勇','1','信息科技部','67803865','18963978006','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104066','傅建翀','1','信息科技部','67803865','18963979956','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('105076','吴长锋','1','信息科技部','67803475','18971123721','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('103988','高凌','1','信息科技部','67803573','18607171519','hkbank');

-- 插入成员小组表
insert into team(team_id, team_index, team_name)
values('1','1','领导组');
insert into team
values('2','2','灾备组');
insert into team
values('3','3','安全组');
insert into team
values('4','4','测试组');
insert into team
values('5','5','应用组');
insert into team
values('6','6','数据组');
insert into team
values('7','7','系统组');
insert into team
values('8','8','网络组');
insert into team
values('9','9','监控组');
insert into team
values('10','9','后勤保障组');
insert into team
values('11','9','零售银行部');
insert into team
values('12','9','电子银行部');
insert into team
values('13','9','会计结算部');
insert into team
values('14','9','公司银行部');
insert into team
values('15','9','金融市场部');
insert into team
values('16','9','信贷管理部');
insert into team
values('17','9','营运部');

-- 插入小组成员表
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('1', '1', '103964', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('1', '2', '104065', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('1', '2', '104184', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('1', '2', '105288', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('1', '3', '104277', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('1', '4', '101483', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('1', '4', '104063', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('1', '4', '105315', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('1', '5', '104772', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('1', '5', '105284', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('1', '6', '104726', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('1', '7', '103813', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('1', '7', '103971', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('1', '8', '104066', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('1', '8', '105076', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('1', '9', '103988', '1');

-- 插入任务分配关系数据
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '1', '104184', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '2', '104065', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '3', '104184', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '3', '104772', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '3', '105284', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '4', '103971', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '5', '104066', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '6', '105288', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '6', '104762', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '6', '104772', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '6-1', '104762', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '6-2', '104762', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '6-3', '105288', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '6-4', '104762', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '6-4-1', '104762', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '6-5', '104772', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '6-5-1', '104772', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '6-5-2', '104772', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '6-6', '104066', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '6-7', '104066', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '7', '104184', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '7', '104772', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '7', '105284', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '8', '104184', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '8', '104772', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '8', '105284', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '9', '101483', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '9', '104063', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '9', '105315', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '10', '104066', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '10', '103988', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '10', '105076', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '10-1', '103988', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '10-2', '105076', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '11', '101483', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '11', '104063', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '11', '105315', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values ('1', '12', '104065', '1');