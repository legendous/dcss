--建表空间
create tablespace DCSS
datafile 'C:\app\xuyang\product\11.2.0\dbhome_1\DCSS.dbf' size 1000M
autoextend on  --自动增长  
--还有一些定义大小的命令，看需要  
next 5M maxsize 3000M;

--建用户
create user dcss identified by dcss   
default tablespace DCSS;

--赋权
grant connect,resource to dcss;  
grant dba to dcss;
