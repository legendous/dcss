--插入流程数据
insert into flow(FLOW_ID,FLOW_NAME)
values('4','前置系统迁移-核心系统导数');

--插入任务数据
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','1','虚拟机及电票','','0','1','','',to_date('20150417 18:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150417 23:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','1-1','汇率同步虚拟机迁移、切换','','0','2','1','',to_date('20150417 18:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150417 19:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','1-2','一体机切换','','0','2','1','',to_date('20150417 19:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150417 19:15:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','1-3','DARS切换','','0','2','1','',to_date('20150417 19:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150417 20:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','1-4','COMSTAR资金系统切换','','0','2','1','',to_date('20150417 20:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150417 21:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','1-5','电票光谷上线','','0','2','1','',to_date('20150417 20:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150417 22:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','1-6','前置相关非重要虚拟机迁移','详见设备列表','0','2','1','',to_date('20150417 21:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 00:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','1-7','电票生产验证','','0','2','1','',to_date('20150417 22:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150417 23:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','2','核心准备工作','','0','1','','',to_date('20150417 20:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 01:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','2-1','准备磁带，备份1个临时文件，检查带库状态','','0','2','2','',to_date('20150417 20:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150417 20:40:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','2-2','督促个贷签退','','0','2','2','',to_date('20150417 20:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150417 21:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','2-3','督促核心签退','','0','2','2','',to_date('20150417 20:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150417 21:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','2-4','督促网点签退','','0','2','2','',to_date('20150417 20:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150417 21:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','2-5','个贷系统日终','','0','2','2','',to_date('20150417 20:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150417 21:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','2-6','理财资管系统日终','','0','2','2','',to_date('20150417 20:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150417 21:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','2-7','表外融资日终处理','','0','2','2','',to_date('20150417 20:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150417 21:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','2-8','现金管理平台日终','','0','2','2','',to_date('20150417 20:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150417 21:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','2-9','日终跑批','','0','2','2','2-1,2-2,2-3,2-4,2-5,2-6,2-7,2-8',to_date('20150417 22:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150417 23:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','2-10','修改磁带备份次数为1次','','0','2','2','2-9',to_date('20150417 22:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150417 22:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','2-11','日终磁带备份','','0','2','2','2-10',to_date('20150417 23:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 01:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','3','网关切换','等待前置、核心完全停机后，再进行','0','1','','3-2,4-3',to_date('20150418 01:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 01:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','4','前置切换','','0','1','','',to_date('20150418 01:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 03:20:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','4-1','停前置自动任务','','0','2','4','3',to_date('20150418 01:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 01:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','4-2','停止前置应用、数据库','','0','2','4','4-1',to_date('20150418 01:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 01:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','4-3','前置相关重要虚拟机迁移','','0','2','4','4-1',to_date('20150418 01:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 01:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','4-4','停止加密平台，复制密钥文件','','0','2','4','4-2',to_date('20150418 01:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 01:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','4-5','修改F5的加密平台指向','','0','2','4','4-2',to_date('20150418 01:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 01:40:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','4-6','暂停VMAX存储复制','','0','2','4','4-2',to_date('20150418 01:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 01:40:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','4-7','VLAN切换（前置、加密平台）','','0','2','4','4-6',to_date('20150418 01:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 01:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','4-8','复制密钥文件，启动加密平台应用','','0','2','4','4-8',to_date('20150418 01:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 02:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','4-9','启动数据库','','0','2','4','4-7',to_date('20150418 02:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 02:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','4-10','等核心启动后，启动前置应用','','0','2','4','4-9,5-9',to_date('20150418 03:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 03:20:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','4-11','恢复自动任务','','0','2','4','4-10',to_date('20150418 03:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 03:20:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','4-12','修改日志备份FTP地址（修改日志备份FTP地址,198.185)','','0','2','4','4-10',to_date('20150418 03:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 03:20:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','5','核心导数','','0','1','','',to_date('20150418 00:50:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 03:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','5-1','确认基础数据平台导数完毕','','0','2','5','',to_date('20150418 00:50:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 01:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','5-2','停止支付系统','','0','2','5','3',to_date('20150418 01:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 01:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','5-3','停止中间业务定时任务','','0','2','5','3',to_date('20150418 01:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 01:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','5-4','停止核心应用,记录日志断点','','0','2','5','5-2,5-3',to_date('20150418 01:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 01:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','5-4-1','停止cdc','','0','3','5','5-4',to_date('20150418 01:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 01:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','5-5','修改生产机上的部分表的jrn属性','详见手册','0','2','5','5-4',to_date('20150418 01:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 03:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','5-6','将I770PRD上的核心数据备份到磁带中(1盘）','详见手册','0','2','5','5-5',to_date('20150418 01:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 03:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','5-7','备份完毕后，启动核心应用','','0','2','5','5-6',to_date('20150418 03:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 03:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','5-8','启动cdc','','0','2','5','5-7',to_date('20150418 03:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 03:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','5-9','启动核心应用','','0','2','5','5-8','','');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','5-10','启动支付系统','','0','2','5','5-9',to_date('20150418 03:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 03:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','5-11','恢复中间业务批量','','0','2','5','5-9',to_date('20150418 03:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 03:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','5-12','核心技术验证','','0','2','5','5-9',to_date('20150418 03:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 03:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','6','业务验证','','0','1','','',to_date('20150418 03:20:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 04:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','6-1','核心交易验证','验证柜面核心登录、查询；支付系统（网银小额、网银互联等）','0','2','6','5-9,5-10',to_date('20150418 03:20:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 03:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','6-2','前置交易验证','卡业务验证，按CSP迁移验证方案全面验证自助设备、借记卡银联跨行交易等；','0','2','6','4-10,5-9',to_date('20150418 03:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 04:30:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','7','反向VMAX复制关系','','0','1','','',to_date('20150418 04:30:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 04:40:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','8','磁带导入','','0','1','','','','');
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','8-1','将磁带拿到光谷','','0','2','8','',to_date('20150418 09:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 11:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','8-2','将4-6-1及4-6-8中备份的数据恢复到2台新购770主机上，恢复前清理环境','','0','2','8','7-1',to_date('20150418 11:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 13:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','8-3','待I770GGPR恢复后，重置USRJRN和QAUDJRN的JRN RCV顺序号，并记录断点B','','0','2','8','7-2',to_date('20150418 13:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 13:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','8-4','以6-1-3中记录的断点B启动P2B数据组，以4-3中记录的断点A启动P2H数据组','STRDG DGDFN(P2H),STRDG DGDFN(P2B) ','0','2','8','7-3',to_date('20150418 18:00:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 18:00:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','8-5','观察MIMIX的P2B、P2H数据组、OMS的H20H22 link运行是否正常。','','0','2','8','7-4',to_date('20150418 18:10:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 18:10:00','yyyyMMdd HH24:Mi:SS'));
insert into task(FLOW_ID,TASK_ID,TASK_NAME,TASK_CONTENT,TASK_STAT,TASK_LEVEL,PARENT_TASK_ID,FRONT_TASK_ID,TASK_BEGIN_TIME_PLAN,TASK_END_TIME_PLAN)
values('4','8-6','待P2B、P2H数据组数据追平后，手工提交MIMIX数据比对，验证恢复的数据完整、正确','','0','2','8','7-5',to_date('20150418 18:40:00','yyyyMMdd HH24:Mi:SS'),to_date('20150418 19:30:00','yyyyMMdd HH24:Mi:SS'));


-- 插入用户数据
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('105279','南丽玲','1','信息科技部','67803081','13554402936','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('105276','代雄路','1','信息科技部','67803061','15527205463','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('103873','丁璐','1','信息科技部','67803102','18963978276','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104070','高超','1','信息科技部','67803712','18963978297','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104352','张桦','1','信息科技部','67803892','18963978322','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104937','严伟','1','信息科技部','67803057','18627828100','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('103109','王海星','1','信息科技部','67803104','18963978302','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('103872','胡斌','1','信息科技部','67803063','18963978286','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104185','张薇','1','信息科技部','67803055','13507121433','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104186','陈蒙','1','信息科技部','67803851','13871500806','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('103356','魏婕妤','1','信息科技部','67803732','18963978313','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('103497','唐阿丹','1','信息科技部','67803074','18963979266','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104067','徐鸿飞','1','信息科技部','67803722','18963978296','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('103635','杨宇杰','1','信息科技部','67803742','13237115700','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('103792','张志忠','1','信息科技部','67803120','18963979959','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('103937','马知远','1','信息科技部','67803721','18672784601','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104634','蔡诗','1','信息科技部','67803614','13871082386','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104868','郝政道','1','信息科技部','67803084','13554183063','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104677','尚志刚','1','信息科技部','67803092','13545066346','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('HS1001','李一然','1','汉思公司','','18062669980','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('103641','孙亮','1','水果湖支行','','','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('TEMP01','金融市场部','1','金融市场部','','','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('TEMP02','会计结算部','1','会计结算部','','','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('TEMP03','机房值班人员','1','信息科技部','','','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('105189','陶伟','1','金融市场部','','18627814935','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('104908','张亮','1','信息科技部','67803090','18062027236','hkbank');
insert into users(user_id, user_name, user_role, user_depart, user_telephone, user_mobile, user_pwd)
values('105427','佘云','1','信息科技部','67803090','13476824500','hkbank');


-- 插入小组成员表
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '1', '103964', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '1', '103635', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '1', '103792', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '2', '104065', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '2', '104184', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '2', '105288', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '3', '104277', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '4', '101483', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '4', '103356', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '4', '104063', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '4', '103497', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '4', '103641', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '5', '103109', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '5', '103872', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '5', '103497', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '5', '105279', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '5', '105276', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '5', '103873', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '5', '104070', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '5', '104352', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '5', '104937', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '5', '104185', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '5', '104186', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '5', '104634', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '5', '104868', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '5', '104677', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '5', 'HS1001', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '6', '104726', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '6', '103989', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '7', '103813', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '7', '105427', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '8', '104066', '1');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '8', '105076', '0');
insert into teamers(FLOW_ID, TEAM_ID, USER_ID, LEADER)
values('4', '9', '103988', '1');


-- 插入任务分配关系数据
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '1', '105427', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '1-1', '105427', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '1-1', '103989', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '1-2', '104726', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '1-2', '103792', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '1-3', '105427', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '1-3', 'HS1001', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '1-4', '105427', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '1-4', '104634', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '1-5', '104186', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '1-5', '104634', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '1-5', '104677', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '1-5', '104868', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '1-6', '105427', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '1-6', '104070', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '1-6', '105276', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '1-6', '103937', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '1-7', '103641', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '2', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '2-1', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '2-2', 'TEMP01', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '2-3', 'TEMP02', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '2-4', 'TEMP03', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '2-5', '104634', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '2-6', '105189', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '2-7', '104908', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '2-8', 'TEMP03', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '2-9', 'TEMP03', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '2-10', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '2-10', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '2-11', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '2-11', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '3', '104066', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4', '103873', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-1', '105279', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-1', '105276', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-1', '103873', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-2', '105279', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-2', '105276', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-2', '103873', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-3', '105427', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-3', '104070', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-3', '105276', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-3', '103937', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-4', '104065', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-4', '103873', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-5', '105076', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-6', '103813', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-7', '104066', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-8', '104065', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-8', '103873', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-9', '105279', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-9', '105276', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-9', '103873', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-10', '105279', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-10', '105276', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-10', '103873', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-11', '105279', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-11', '105276', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-11', '103873', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-12', '105279', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-12', '105276', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '4-12', '103873', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-1', '103989', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-1', '104352', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-2', '105279', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-2', '104185', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-3', '104937', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-3', '104185', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-4', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-4', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-4-1', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-4-1', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-5', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-5', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-6', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-6', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-7', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-7', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-8', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-8', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-9', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-9', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-10', '105279', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-10', '104185', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-11', '104937', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-11', '104185', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-12', '103872', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '5-12', '104186', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '6', '101483', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '6-1', '103356', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '6-1', '104063', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '6-1', '101483', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '6-2', '103497', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '6-2', '101483', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '7', '103813', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '8', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '8-1', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '8-2', '104067', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '8-2', '104186', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '8-3', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '8-3', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '8-4', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '8-4', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '8-5', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '8-5', '103872', '0');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '8-6', '103109', '1');
insert into TASK_ALLOT (FLOW_ID, TASK_ID, USER_ID, HEADER)
values('4', '8-6', '103872', '0');