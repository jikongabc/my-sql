Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
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
mysql> create table students(id int primary key auto_increment ,name varchar(10) not null,age int check(18<=age<=30),gender varchar(1) check(gender='男' or gender='女'),email varchar(20) not null unique;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> create table students(id int primary key auto_increment ,name varchar(10) not null,age int check(age>=18 and age<=30),gender char(1) check(gender='男' or gender='女'),email varchar(10) not null unique;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> create table students(id int primary key auto_increment ,name varchar(10) not null,age int check(age>=18 and age<=30),gender char(1) check(gender='男' or gender='女'),email varchar(10) unique not null ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> create table students(id int primary key auto_increment ,name varchar(10) not null,age int check(age>=18 and age<=30),gender char(1) check(gender='男' or gender='女'),email varchar(10) unique not null) ;
Query OK, 0 rows affected (0.06 sec)

mysql> desc students;
+--------+-------------+------+-----+---------+----------------+
| Field  | Type        | Null | Key | Default | Extra          |
+--------+-------------+------+-----+---------+----------------+
| id     | int         | NO   | PRI | NULL    | auto_increment |
| name   | varchar(10) | NO   |     | NULL    |                |
| age    | int         | YES  |     | NULL    |                |
| gender | char(1)     | YES  |     | NULL    |                |
| email  | varchar(10) | NO   | UNI | NULL    |                |
+--------+-------------+------+-----+---------+----------------+
5 rows in set (0.01 sec)

mysql> drop table students;
Query OK, 0 rows affected (0.02 sec)

mysql> create table students(id int primar key auto_increment,name varchar(10) not null,department_id int ,foreign key(department_id) references departments(id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'primar key auto_increment,name varchar(10) not null,department_id int ,foreign k' at line 1
mysql>  create table students(id int primar key auto_increment,name varchar(10) not null,department_id int ,foreign key(department_id) references departments(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'primar key auto_increment,name varchar(10) not null,department_id int ,foreign k' at line 1
mysql>  create table students(id int primary key auto_increment,name varchar(10) not null,department_id int ,foreign key(department_id) references departments(id));
ERROR 1824 (HY000): Failed to open the referenced table 'departments'
mysql>  create table departments(id int primary key auto_increment,name varchar(10) not null);
Query OK, 0 rows affected (0.03 sec)

mysql>  create table students(id int primary key auto_increment,name varchar(10) not null,department_id int ,foreign key(department_id) references departments(id));
Query OK, 0 rows affected (0.02 sec)

mysql> desc students;
+---------------+-------------+------+-----+---------+----------------+
| Field         | Type        | Null | Key | Default | Extra          |
+---------------+-------------+------+-----+---------+----------------+
| id            | int         | NO   | PRI | NULL    | auto_increment |
| name          | varchar(10) | NO   |     | NULL    |                |
| department_id | int         | YES  | MUL | NULL    |                |
+---------------+-------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

mysql> desc departments;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int         | NO   | PRI | NULL    | auto_increment |
| name  | varchar(10) | NO   |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
2 rows in set (0.00 sec)

mysql> drop students,departments;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'students,departments' at line 1
mysql> drop table students;
Query OK, 0 rows affected (0.01 sec)

mysql> drop table departments;
Query OK, 0 rows affected (0.01 sec)

mysql> create table user(
    ->  id int primary key auto_increment,
    ->  name varchar(10),
    -> money int
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> insert into user(name, money) values('张三', 2000),('李四', 2000);
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> set @@autocommit=0;
Query OK, 0 rows affected (0.00 sec)

mysql> update user set money = money - 1000 where name = '张三';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> 1update user set money = money + 1000 where name = '李四';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1update user set money = money + 1000 where name = '李四'' at line 1
mysql> select * from user;
+----+--------+-------+
| id | name   | money |
+----+--------+-------+
|  1 | 张三   |  1000 |
|  2 | 李四   |  2000 |
+----+--------+-------+
2 rows in set (0.00 sec)

mysql> rollback;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from user;
+----+--------+-------+
| id | name   | money |
+----+--------+-------+
|  1 | 张三   |  2000 |
|  2 | 李四   |  2000 |
+----+--------+-------+
2 rows in set (0.00 sec)

mysql> drop table user;
Query OK, 0 rows affected (0.01 sec)

mysql> create table user(
    ->  id int primary key auto_increment,
    ->  name varchar(10),
    -> money int
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> insert into user(name, money) values('张三', 2000),('李四', 2000);
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> begin;
Query OK, 0 rows affected (0.00 sec)

mysql> update user set money = money - 1000 where name = '张三';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> 1update user set money = money + 1000 where name = '李四';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1update user set money = money + 1000 where name = '李四'' at line 1
mysql> select * from user;
+----+--------+-------+
| id | name   | money |
+----+--------+-------+
|  1 | 张三   |  1000 |
|  2 | 李四   |  2000 |
+----+--------+-------+
2 rows in set (0.00 sec)

mysql> rollback;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from user;
+----+--------+-------+
| id | name   | money |
+----+--------+-------+
|  1 | 张三   |  2000 |
|  2 | 李四   |  2000 |
+----+--------+-------+
2 rows in set (0.00 sec)

mysql> SELECT @@TRANSACTION_ISOLATION;
+-------------------------+
| @@TRANSACTION_ISOLATION |
+-------------------------+
| REPEATABLE-READ         |
+-------------------------+
1 row in set (0.00 sec)

mysql>