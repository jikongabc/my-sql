Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
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
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.01 sec)

mysql> create database jikong;
Query OK, 1 row affected (0.01 sec)

mysql> use jikong;
Database changed
mysql> create table class(id int comment'编号',name varchar(30) comment '姓名',age int comment'年龄' ,sex varchar(1) comment,id_card varchar(18));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',id_card varchar(18))' at line 1
mysql>
mysql>  create table class(id int comment'编号',name varchar(30) comment '姓名',age int comment'年龄' ,sex varchar(1) comment '性别',id_card varchar(18) comment '身份证');
Query OK, 0 rows affected (0.03 sec)

mysql> desc class;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| id      | int         | YES  |     | NULL    |       |
| name    | varchar(30) | YES  |     | NULL    |       |
| age     | int         | YES  |     | NULL    |       |
| sex     | varchar(1)  | YES  |     | NULL    |       |
| id_card | varchar(18) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> insert into class (id, name , age, sex ,id_card),values(1,'唐三', 18,'男', '12901290129012345X');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',values(1,'唐三', 18,'男', '12901290129012345X')' at line 1
mysql>  insert into class (id, name , age, sex ,id_card),values(1,'唐三', 18,'男', '12901290129012345X');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',values(1,'唐三', 18,'男', '12901290129012345X')' at line 1
mysql>   insert into class (id, name , age, sex ,id_card)values(1,'唐三', 18,'男', '12901290129012345X');
Query OK, 1 row affected (0.01 sec)

mysql> insert into class (id, name , age, sex ,id_card)values(1,'孙悟空', 100,'男', '22112312319012345X');
Query OK, 1 row affected (0.01 sec)

mysql> insert into class (id, name , age, sex ,id_card)values(3,'猪八戒', 100,'男', '23290129019012345X');
Query OK, 1 row affected (0.01 sec)

mysql> insert into class (id, name , age, sex ,id_card)values(4,'沙僧', 78,'女', '23290190290112345X');
Query OK, 1 row affected (0.01 sec)

mysql> seslect * from class;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'seslect * from class' at line 1
mysql> select * from class;
+------+-----------+------+------+--------------------+
| id   | name      | age  | sex  | id_card            |
+------+-----------+------+------+--------------------+
|    1 | 唐三      |   18 | 男   | 12901290129012345X |
|    1 | 孙悟空    |  100 | 男   | 22112312319012345X |
|    3 | 猪八戒    |  100 | 男   | 23290129019012345X |
|    4 | 沙僧      |   78 | 女   | 23290190290112345X |
+------+-----------+------+------+--------------------+
4 rows in set (0.00 sec)

mysql>