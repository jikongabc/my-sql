Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.0.34 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| jikong             |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> use jikong ;
Database changed
mysql> show tables;
+------------------+
| Tables_in_jikong |
+------------------+
| class            |
+------------------+
1 row in set (0.01 sec)

mysql> drop table class;
Query OK, 0 rows affected (0.01 sec)

mysql> create table emp(
    ->  id int comment '编号',
    ->  workno varchar(10) comment '⼯号',
    ->  name varchar(10) comment '姓名',
    ->  gender char(1) comment '性别',
    ->  age tinyint unsigned comment '年龄',
    ->  idcard char(18) comment '身份证号',
    ->  workaddress varchar(50) comment '⼯作地址',
    ->  entrydate date comment '⼊职时间'
    -> )comment '员⼯表';
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate) VALUES
    -> (1, '00001', '柳岩666', '⼥', 20, '123456789012345678', '北京', '2000-01-01');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate) VALUES
    -> (2, '00002', '张⽆忌', '男', 18, '123456789012345670', '北京', '2005-09-01');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate) VALUES
    -> (3, '00003', '⻙⼀笑', '男', 38, '123456789712345670', '上海', '2005-08-01');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate) VALUES
    -> (4, '00004', '赵敏', '⼥', 18, '123456757123845670', '北京', '2009-12-01');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate) VALUES
    -> (5, '00005', '⼩昭', '⼥', 16, '123456769012345678', '上海', '2007-07-01');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate) VALUES
    -> (6, '00006', '杨逍', '男', 28, '12345678931234567X', '北京', '2006-01-01');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate) VALUES
    -> (7, '00007', '范瑶', '男', 40, '123456789212345670', '北京', '2005-05-01');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate) VALUES
    -> (8, '00008', '黛绮丝', '⼥', 38, '123456157123645670', '天津', '2015-05-01');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate) VALUES
    -> (9, '00009', '范凉凉', '⼥', 45, '123156789012345678', '北京', '2010-04-01');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate) VALUES
    -> (10, '00010', '陈友谅', '男', 53, '123456789012345670', '上海', '2011-01-01');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate) VALUES
    -> (11, '00011', '张⼠诚', '男', 55, '123567897123465670', '江苏', '2015-05-01');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate) VALUES
    -> (12, '00012', '常遇春', '男', 32, '123446757152345670', '北京', '2004-02-01');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate) VALUES
    -> (13, '00013', '张三丰', '男', 88, '123656789012345678', '江苏', '2020-11-01');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate) VALUES
    -> (14, '00014', '灭绝', '⼥', 65, '123456719012345670', '⻄安', '2019-05-01');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate) VALUES
    -> (15, '00015', '胡⻘⽜', '男', 70, '12345674971234567X', '⻄安', '2018-04-01');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate) VALUES
    -> (16, '00016', '周芷若', '⼥', 18, null, '北京', '2012-06-01');
Query OK, 1 row affected (0.00 sec)

mysql> select * from emp;
+------+--------+-----------+--------+------+--------------------+-------------+------------+
| id   | workno | name      | gender | age  | idcard             | workaddress | entrydate  |
+------+--------+-----------+--------+------+--------------------+-------------+------------+
|    1 | 00001  | 柳岩666   | ⼥     |   20 | 123456789012345678 | 北京        | 2000-01-01 |
|    2 | 00002  | 张⽆忌    | 男     |   18 | 123456789012345670 | 北京        | 2005-09-01 |
|    3 | 00003  | ⻙⼀笑    | 男     |   38 | 123456789712345670 | 上海        | 2005-08-01 |
|    4 | 00004  | 赵敏      | ⼥     |   18 | 123456757123845670 | 北京        | 2009-12-01 |
|    5 | 00005  | ⼩昭      | ⼥     |   16 | 123456769012345678 | 上海        | 2007-07-01 |
|    6 | 00006  | 杨逍      | 男     |   28 | 12345678931234567X | 北京        | 2006-01-01 |
|    7 | 00007  | 范瑶      | 男     |   40 | 123456789212345670 | 北京        | 2005-05-01 |
|    8 | 00008  | 黛绮丝    | ⼥     |   38 | 123456157123645670 | 天津        | 2015-05-01 |
|    9 | 00009  | 范凉凉    | ⼥     |   45 | 123156789012345678 | 北京        | 2010-04-01 |
|   10 | 00010  | 陈友谅    | 男     |   53 | 123456789012345670 | 上海        | 2011-01-01 |
|   11 | 00011  | 张⼠诚    | 男     |   55 | 123567897123465670 | 江苏        | 2015-05-01 |
|   12 | 00012  | 常遇春    | 男     |   32 | 123446757152345670 | 北京        | 2004-02-01 |
|   13 | 00013  | 张三丰    | 男     |   88 | 123656789012345678 | 江苏        | 2020-11-01 |
|   14 | 00014  | 灭绝      | ⼥     |   65 | 123456719012345670 | ⻄安        | 2019-05-01 |
|   15 | 00015  | 胡⻘⽜    | 男     |   70 | 12345674971234567X | ⻄安        | 2018-04-01 |
|   16 | 00016  | 周芷若    | ⼥     |   18 | NULL               | 北京        | 2012-06-01 |
+------+--------+-----------+--------+------+--------------------+-------------+------------+
16 rows in set (0.00 sec)

mysql> select count(*) from emp where age >30 && gender ='女';
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set, 1 warning (0.01 sec)

mysql> select count(*)commemt'数量' from emp where age >30 && gender ='女';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''数量' from emp where age >30 && gender ='女'' at line 1
mysql>  select count(*) '数量'from emp where age >30 && gender ='女';
+--------+
| 数量   |
+--------+
|      3 |
+--------+
1 row in set, 1 warning (0.00 sec)

mysql> select avg(age) '北京平均年龄' where workaddress = '北京';
ERROR 1054 (42S22): Unknown column 'age' in 'field list'
mysql>  select avg(age) '北京平均年龄' from emp where workaddress = '北京';
+--------------------+
| 北京平均年龄       |
+--------------------+
|            27.3750 |
+--------------------+
1 row in set (0.01 sec)

mysql> select * from emp order by age desc limit;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> mysql> select * from emp where age=(select max(age) from emp);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql> select * from emp where age=(select max(age) from emp)' at line 1
mysql>  select * from emp order by age desc limit1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'limit1' at line 1
mysql> select * from emp order by age desc limit 1;
+------+--------+-----------+--------+------+--------------------+-------------+------------+
| id   | workno | name      | gender | age  | idcard             | workaddress | entrydate  |
+------+--------+-----------+--------+------+--------------------+-------------+------------+
|   13 | 00013  | 张三丰    | 男     |   88 | 123656789012345678 | 江苏        | 2020-11-01 |
+------+--------+-----------+--------+------+--------------------+-------------+------------+
1 row in set (0.00 sec)

mysql> select name from emp order by entrydate limit 1;
+-----------+
| name      |
+-----------+
| 柳岩666   |
+-----------+
1 row in set (0.00 sec)

mysql> select  workaddress  count (*)'员工数量' from emp group by workaddress;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(*)'员工数量' from emp group by workaddress' at line 1
mysql>  select  workaddress ， count (*)'员工数量' from emp group by workaddress;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'count (*)'员工数量' from emp group by workaddress' at line 1
mysql>  select  workaddress ， count (*) from emp group by workaddress;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'count (*) from emp group by workaddress' at line 1
mysql>  select  workaddress, count (*)'数量' from emp group by workaddress;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '*)'数量' from emp group by workaddress' at line 1
mysql>  select  workaddress, count (*) from emp group by workaddress;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '*) from emp group by workaddress' at line 1
mysql> select workaddress ,count(*) from emp group by workaddress;
+-------------+----------+
| workaddress | count(*) |
+-------------+----------+
| 北京        |        8 |
| 上海        |        3 |
| 天津        |        1 |
| 江苏        |        2 |
| ⻄安        |        2 |
+-------------+----------+
5 rows in set (0.00 sec)

mysql>  select workaddress ,count(*)as count from emp group by workaddress order by count desc;
+-------------+-------+
| workaddress | count |
+-------------+-------+
| 北京        |     8 |
| 上海        |     3 |
| 江苏        |     2 |
| ⻄安        |     2 |
| 天津        |     1 |
+-------------+-------+
5 rows in set (0.00 sec)

mysql> select count(*)'数量' from emp where idcard is null;
+--------+
| 数量   |
+--------+
|      1 |
+--------+
1 row in set (0.00 sec)

mysql> select * from emp order by age desc limit 5;
+------+--------+-----------+--------+------+--------------------+-------------+------------+
| id   | workno | name      | gender | age  | idcard             | workaddress | entrydate  |
+------+--------+-----------+--------+------+--------------------+-------------+------------+
|   13 | 00013  | 张三丰    | 男     |   88 | 123656789012345678 | 江苏        | 2020-11-01 |
|   15 | 00015  | 胡⻘⽜    | 男     |   70 | 12345674971234567X | ⻄安        | 2018-04-01 |
|   14 | 00014  | 灭绝      | ⼥     |   65 | 123456719012345670 | ⻄安        | 2019-05-01 |
|   11 | 00011  | 张⼠诚    | 男     |   55 | 123567897123465670 | 江苏        | 2015-05-01 |
|   10 | 00010  | 陈友谅    | 男     |   53 | 123456789012345670 | 上海        | 2011-01-01 |
+------+--------+-----------+--------+------+--------------------+-------------+------------+
5 rows in set (0.00 sec)

mysql>  select name,age  from emp order by age desc limit 5;
+-----------+------+
| name      | age  |
+-----------+------+
| 张三丰    |   88 |
| 胡⻘⽜    |   70 |
| 灭绝      |   65 |
| 张⼠诚    |   55 |
| 陈友谅    |   53 |
+-----------+------+
5 rows in set (0.00 sec)

mysql>