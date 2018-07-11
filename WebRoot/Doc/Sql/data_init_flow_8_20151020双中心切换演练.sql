begin

--插入流程数据
insert into flow(FLOW_ID, FLOW_NAME) values('8','汉口银行双中心切换演练');

--插入任务数据
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','1','演练准备','','0','1','','',to_date('20151020 21:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 21:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','2','演练开始','','0','1','','',to_date('20151020 21:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 21:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','3','模拟故障','','0','1','','',to_date('20151020 21:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 21:50:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','3-1','网银互联签退','','0','2','3','',to_date('20151020 21:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 21:35:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','3-2','大小额签退','','0','2','3','',to_date('20151020 21:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 21:35:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','3-3','银联签退','','0','2','3','',to_date('20151020 21:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 21:35:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','3-4','VCS停光谷应用','','0','2','3','3-1',to_date('20151020 21:35:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 21:40:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','3-5','停光谷虚拟机应用','','0','2','3','3-1',to_date('20151020 21:35:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 21:40:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','3-6','停光谷核心应用','','0','2','3','3-4',to_date('20151020 21:40:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 21:50:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','4','应急演练','','0','1','','',to_date('20151020 21:40:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 22:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','4-1','灾难初始响应','','0','2','4','3-5',to_date('20151020 21:40:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 21:45:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','4-2','电信线路切换','','0','2','4','3-5',to_date('20151020 21:40:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 21:50:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','4-3','客服应急演练','','0','2','4','',to_date('20151020 21:50:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 22:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','4-4','事件评估与决策','','0','2','4','4-3',to_date('20151020 22:15:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 22:25:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','4-5','灾难宣告，宣布启动灾备','','0','2','4','4-4',to_date('20151020 22:15:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 22:25:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','5','切换','','0','1','','',to_date('20151020 21:40:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 22:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','6','汉口启动阶段','','0','1','','',to_date('20151020 22:25:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 23:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','6-1','汉口核心启动应用及检查','','0','2','6','',to_date('20151020 22:25:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 22:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','6-2','VCS 启动前置+加密平台+前端','','0','2','6','',to_date('20151020 22:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 22:35:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','6-3','内部业务测试','','0','2','6','',to_date('20151020 22:35:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 22:45:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','6-4','ATM控制开放所有网点','','0','2','6','',to_date('20151020 22:45:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 22:50:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','6-5','VCS 启动所有汉口应用','','0','2','6','',to_date('20151020 22:45:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 22:55:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','6-6','虚拟机应用 启动汉口应用','','0','2','6','',to_date('20151020 22:45:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 22:55:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','6-7','大小额签到','','0','2','6','',to_date('20151020 22:55:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 23:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','6-8','网银互联签到','','0','2','6','',to_date('20151020 22:55:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 23:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','6-9','银联签到','','0','2','6','',to_date('20151020 22:55:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 23:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','6-10','全面业务测试','','0','2','6','',to_date('20151020 23:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 23:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','6-11','系统状态检查','','0','2','6','',to_date('20151020 23:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 23:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN) values('8','7','演练完成','','0','1','','6-11',to_date('20151020 23:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20151020 23:30:00','yyyyMMdd HH24:Mi:SS'));


--插入用户数据
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105427','佘昀','1','信息科技部','67803080','13476824500','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103950','李珉','1','信息科技部','67803062','18963978311','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104362','周军伟','1','信息科技部','67803854','18963978301','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104352','张桦','1','信息科技部','67803892','18963978322','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104277','潘成斌','1','信息科技部','67803700','13871424909','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104353','胡博','1','信息科技部','67803725','18971526507','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104350','赵智伟','1','信息科技部','67803850','18963978285','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104278','陈金林','1','信息科技部','67803731','18963978003','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('109136','韩慧琳','1','信息科技部','67803086','13797085016','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104291','马轲','1','信息科技部','67803099','18571477099','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104439','黄巍立','1','信息科技部','67803527','13317103223','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104489','周薇','1','信息科技部','67803070','13027186510','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104537','龚雪诗','1','信息科技部','67803132','18627876566','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('109479','王家亮','1','信息科技部','767803240','13995574253','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104616','徐焕钦','1','信息科技部','67803947','18627179286','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104634','蔡诗','1','信息科技部','67803614','13871082386','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104659','董毅','1','信息科技部','67803052','67803052','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104663','辜志明','1','信息科技部','67803091','18963978309','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104664','张子剑','1','信息科技部','67803727','13628699971','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104677','尚志刚','1','信息科技部','67803092','13545066346','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('109591','杨春雷','1','信息科技部','67803075','18502713656','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104726','王扬','1','信息科技部','67803079','13387500612','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104772','周鹏','1','信息科技部','67803844','15927397345','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104776','王珩','1','信息科技部','67803703','13971257608','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104797','孙青松','1','信息科技部','67803674','15623242651','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104803','李晓希','1','信息科技部','67803972','18502721430','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104809','吴昊','1','信息科技部','67803771','18963978566','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104904','周方','1','信息科技部','67803113','13986281045','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104903','韩南南','1','信息科技部','67803446','13971346259','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104908','张亮','1','信息科技部','67803090','18062027236','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104905','高慧丹','1','信息科技部','67803397','15807108003','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104870','王伟','1','信息科技部','67803054','15172478134','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104906','袁丽娜','1','信息科技部','67803163','15927243684','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104868','郝政道','1','信息科技部','67803084','13554183063','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104912','孙强','1','信息科技部','67803442','13554457785','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('109706','王康','1','信息科技部','67803076','18627939417','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104937','严伟','1','信息科技部','67803057','18627828100','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105024','付廷伟','1','信息科技部','67803067','18696176425','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105008','马光宇','1','信息科技部','67803089','18062671712','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105076','吴长锋','1','信息科技部','67803499','18971123721','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105138','付广成','1','信息科技部','67803279','18627002510','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105131','张洁','1','信息科技部','67803474','15871485024','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105130','曾杰','1','信息科技部','67803060','13437166636','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105132','陈磊','1','信息科技部','67803058','18507129409','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105277','刘梦颖','1','信息科技部','67803051','13429814386','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105281','荣铁','1','信息科技部','67803082','15071279573','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105282','陈柯','1','信息科技部','67803083','13720120607','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105279','南丽玲','1','信息科技部','67803081','13554402936','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105276','代雄路','1','信息科技部','67803061','15527205463','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105284','刘丹妮','1','信息科技部','67803085','15827576401','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105283','尹雪','1','信息科技部','67803071','13657241974','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105289','李旷','1','信息科技部','67803065','15271859879','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105287','杨娣','1','信息科技部','67803056','13260588663','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105280','汪雷','1','信息科技部','67803025','13554499194','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105286','游博','1','信息科技部','67803068','13554106700','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105290','禹禾','1','信息科技部','67803843','13971085636','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105275','郑翔','1','信息科技部','67803087','15802786223','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105285','陈念','1','信息科技部','67803069','13659887254','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105278','骆健聪','1','信息科技部','67803072','13407152503','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105288','鲁雄锋','1','信息科技部','67803811','15827642867','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('102330','熊卫鸿','1','信息科技部','67803040','18627025099','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('101483','凃波','1','信息科技部','67803477','67803477','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('101040','刘江娇','1','信息科技部','67803558','13807111266','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104063','夏光','1','信息科技部','67803103','18986268876','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103489','张浩','1','信息科技部','67803425','13720117636','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('102612','王创','1','信息科技部','67803101','13707139019','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103463','罗琛','1','信息科技部','67803720','18963978317','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103753','颜伟','1','信息科技部','67803351','13437292178','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103356','魏婕妤','1','信息科技部','67803732','18963978313','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104184','徐扬','1','信息科技部','67803350','18963978275','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104185','张薇','1','信息科技部','67803055','13507121433','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104186','陈蒙','1','信息科技部','67803851','13871500806','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104183','高凌峰','1','信息科技部','67803053','18971111416','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('102932','汪继红','1','信息科技部','67803066','18963978519','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('102835','张婷','1','信息科技部','67803073','13720331544','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103500','丁凯','1','信息科技部','67803078','18963978289','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103873','丁璐','1','信息科技部','67803102','18963978276','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104066','傅建翀','1','信息科技部','67803127','18963979956','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103989','刘刚','1','信息科技部','67803194','18963978303','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103813','刘晖','1','信息科技部','67803463','13296580896','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103971','姚勇','1','信息科技部','67803865','18963978006','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103792','张志忠','1','信息科技部','67803120','18963979959','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('101782','张欣','1','信息科技部','67803040','13971272883','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104067','徐鸿飞','1','信息科技部','67803722','15972176354','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('101073','曾庆柏','1','信息科技部','67803170','13971554478','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('101075','朱泽慧','1','信息科技部','82656041','18963978177','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103299','李平','1','信息科技部','67803134','18963979602','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('101077','李远虎','1','信息科技部','67803133','13971088125','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104069','杨威','1','信息科技部','67803538','18963978605','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103635','杨宇杰','1','信息科技部','67803742','13237115700','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104065','杨志','1','信息科技部','67803715','18942906840','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103303','殷敏','1','信息科技部','67803548','13517205478','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103348','殷永强','1','信息科技部','67803121','13071207136','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('101557','王军','1','信息科技部','67803040','18694079807','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103109','王海星','1','信息科技部','67803104','18963978302','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103872','胡斌','1','信息科技部','67803063','18963978286','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103964','许宁','1','信息科技部','67803743','13971115595','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103155','许武琦','1','信息科技部','67803077','18963979957','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('101918','郑飙','1','信息科技部','67803040','13971040135','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103937','马知远','1','信息科技部','67803721','18672784601','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103988','高凌','1','信息科技部','67803573','18607171519','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('104070','高超','1','信息科技部','67803712','18963978297','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('102246','祝方群','1','信息科技部','82656040','18963979548','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('102436','吴飙','1','信息科技部','67803040','13607141200','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103497','唐阿丹','1','信息科技部','67803074','18963979266','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('102534','袁庆萍','1','信息科技部','82656040','15392915629','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('103293','宋强华','1','信息科技部','82656040','18963978827','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105636','张中莲','1','信息科技部','67803059','18571725676','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105640','盛含阳','1','信息科技部','67803064','13971460091','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105656','张银香','1','信息科技部','67803094','67803094','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105663','陈荡','1','信息科技部','67803126','','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105681','王波','1','信息科技部','67803128','13349948386','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105686','桂冰洋','1','信息科技部','67803124','','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105730','周小欢','1','信息科技部','67802125','15623218880','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105699','徐图','1','信息科技部','67803130','','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('105714','黄小凤','1','信息科技部','','13986259349','hkbank');
insert into users(USER_ID,USER_NAME,USER_ROLE,USER_DEPART,USER_TELEPHONE,USER_MOBILE,USER_PWD) values('TEMP01','TEMP01','1','信息科技部','','','hkbank');


--插入分组数据
insert into team values('1','1','风控审计组');
insert into team values('2','2','灾难评估组');
insert into team values('3','3','IT执行组');
insert into team values('4','4','业务执行组');
insert into team values('5','5','支持保障组');
insert into team values('6','6','公关联络组');
insert into team values('7','9','操作小组');
insert into team values('8','10','调度小组');
insert into team values('9','7','支持小组');
insert into team values('10','8','汉口监控小组');
insert into team values('11','13','演练会务小组');
insert into team values('12','14','监控小组');
insert into team values('13','18','业务指导小组');
insert into team values('14','12','支持厂商');
insert into team values('15','16','客服');

--插入小组成员表
--1 风控审计组
insert into teamers values('8','1','TEMP01','0');

--2 灾难评估组
--  刘江娇
insert into teamers values('8','2','101040','0');

--3 IT执行组
--  刘江娇 马光宇 曾庆柏 许宁 杨宇杰
insert into teamers values('8','3','101040','0');
insert into teamers values('8','3','105008','1');
insert into teamers values('8','3','101073','2');
insert into teamers values('8','3','103964','3');
insert into teamers values('8','3','103635','4');

--4 业务执行组
insert into teamers values('8','4','TEMP01','0');

--5 支持保障组
insert into teamers values('8','5','TEMP01','0');

--6 公关联络组
insert into teamers values('8','6','TEMP01','0');

--7 操作小组
--  徐扬 王海星 胡斌 徐鸿飞 鲁雄锋 马知远 荣铁 王扬 陈蒙 佘昀
insert into teamers values('8','7','104184','0');
insert into teamers values('8','7','103109','99');
insert into teamers values('8','7','103872','99');
insert into teamers values('8','7','104067','99');
insert into teamers values('8','7','105288','99');
insert into teamers values('8','7','103937','99');
insert into teamers values('8','7','105281','99');
insert into teamers values('8','7','104726','99');
insert into teamers values('8','7','104186','99');
insert into teamers values('8','7','105427','99');

--8 调度小组
--  杨志 殷敏 南丽玲 杨威
insert into teamers values('8','8','104065','0');
insert into teamers values('8','8','103303','99');
insert into teamers values('8','8','105279','99');
insert into teamers values('8','8','104069','99');

--9 支持小组
--  马柯 刘晖 潘成斌 傅建翀 刘刚 周鹏 郝政道 丁璐 张薇 孙强 王伟 张桦 黄巍立
insert into teamers values('8','9','104291','0');
insert into teamers values('8','9','103813','99');
insert into teamers values('8','9','104277','99');
insert into teamers values('8','9','104066','99');
insert into teamers values('8','9','103989','99');
insert into teamers values('8','9','104772','99');
insert into teamers values('8','9','104868','99');
insert into teamers values('8','9','103873','99');
insert into teamers values('8','9','104185','99');
insert into teamers values('8','9','104912','99');
insert into teamers values('8','9','104870','99');
insert into teamers values('8','9','104352','99');
insert into teamers values('8','9','104439','99');

--10 汉口监控小组
--   姚勇 吴长锋 张子剑 周军伟
insert into teamers values('8','10','103971','0');
insert into teamers values('8','10','105076','99');
insert into teamers values('8','10','104664','99');
insert into teamers values('8','10','104362','99');

--11 演练会务小组
--   高凌峰 汪继红
insert into teamers values('8','11','104183','0');
insert into teamers values('8','11','102932','99');

--12 监控小组
--   高凌
insert into teamers values('8','12','103988','0');

--13 业务指导小组
--   凃波 罗琛 夏光 唐阿丹 
insert into teamers values('8','13','101483','0');
insert into teamers values('8','13','103463','99');
insert into teamers values('8','13','104063','99');
insert into teamers values('8','13','103497','99');

--14 支持厂商
insert into teamers values('8','14','TEMP01','0');

--15 客服
--   陈浩
insert into teamers values('8','15','109022','0');


--插入任务分配关系数据
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '1', '103303', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '2', '103303', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '3', '104065', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '3-1', '103937', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '3-2', '104067', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '3-3', '103937', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '3-4', '105288', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '3-5', '103937', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '3-5', '105281', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '3-6', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '4', '104065', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '4-1', '101040', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '4-1', '101073', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '4-2', '104066', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '4-3', '109022', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '4-4', '101040', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '4-4', '101073', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '4-5', '101040', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '4-5', '101073', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '5', '104065', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '6', '104065', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '6-1', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '6-2', '105288', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '6-3', '101483', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '6-4', '103937', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '6-5', '105288', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '6-6', '103937', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '6-7', '104067', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '6-8', '103937', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '6-9', '103937', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '6-10', '101483', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '6-11', '104291', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('8', '7', '103303', '1');
end;