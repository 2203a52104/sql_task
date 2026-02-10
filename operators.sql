create table students_marks
                                      -> (s_id int,
                                      -> s_name varchar(20));
Query OK, 0 rows affected (0.0115 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > desc student_marks;
ERROR: 1146: Table '82r.student_marks' doesn't exist
 MySQL  localhost:33060+ ssl  82r  SQL > alter table student_marks add column total_marks int;
ERROR: 1146: Table '82r.student_marks' doesn't exist
 MySQL  localhost:33060+ ssl  82r  SQL > desc students_marks;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| s_id   | int         | YES  |     | NULL    |       |
| s_name | varchar(20) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
2 rows in set (0.0035 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > alter table students_marks add column total_marks int;
Query OK, 0 rows affected (0.0078 sec)

Records: 0  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  82r  SQL > desc students_marks;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| s_id        | int         | YES  |     | NULL    |       |
| s_name      | varchar(20) | YES  |     | NULL    |       |
| total_marks | int         | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.0016 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > alter table students_marks rename s_name to student_name;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to student_name' at line 1
 MySQL  localhost:33060+ ssl  82r  SQL > alter table students_marks rename s_name to student_name varchar(20);
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to student_name varchar(20)' at line 1
 MySQL  localhost:33060+ ssl  82r  SQL > alter table students_marks rename column s_name to student_name varchar(20);
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'varchar(20)' at line 1
 MySQL  localhost:33060+ ssl  82r  SQL > alter table students_marks rename column s_name to student_name;
Query OK, 0 rows affected (0.0058 sec)

Records: 0  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  82r  SQL > alter table students_marks add column java_marks varchar(20);
Query OK, 0 rows affected (0.0093 sec)

Records: 0  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  82r  SQL > desc student_marks;
ERROR: 1146: Table '82r.student_marks' doesn't exist
 MySQL  localhost:33060+ ssl  82r  SQL > desc students_marks;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| s_id         | int         | YES  |     | NULL    |       |
| student_name | varchar(20) | YES  |     | NULL    |       |
| total_marks  | int         | YES  |     | NULL    |       |
| java_marks   | varchar(20) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.0028 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > alter table students_marks modify column java_marks int;
Query OK, 0 rows affected (0.0188 sec)

Records: 0  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  82r  SQL > desc students_marks;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| s_id         | int         | YES  |     | NULL    |       |
| student_name | varchar(20) | YES  |     | NULL    |       |
| total_marks  | int         | YES  |     | NULL    |       |
| java_marks   | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > alter table student_marks drop column total_marks;
ERROR: 1146: Table '82r.student_marks' doesn't exist
 MySQL  localhost:33060+ ssl  82r  SQL > alter table students_marks drop column total_marks;
Query OK, 0 rows affected (0.0074 sec)

Records: 0  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  82r  SQL > desc students_marks;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| s_id         | int         | YES  |     | NULL    |       |
| student_name | varchar(20) | YES  |     | NULL    |       |
| java_marks   | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > alter table students_marks add column sql_marks int;
Query OK, 0 rows affected (0.0075 sec)

Records: 0  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  82r  SQL > desc students_marks;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| s_id         | int         | YES  |     | NULL    |       |
| student_name | varchar(20) | YES  |     | NULL    |       |
| java_marks   | int         | YES  |     | NULL    |       |
| sql_marks    | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.0016 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > insert into students_marks values
                                      -> (1,'apple',60,60),
                                      -> (2,'banana',70,70),
                                      -> (3,'orange',80,80),
                                      -> (4,'mango',90,90),
                                      -> (5,'grapes',50,50);
Query OK, 5 rows affected (0.0021 sec)

Records: 5  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  82r  SQL > select * from students_marks;
+------+--------------+------------+-----------+
| s_id | student_name | java_marks | sql_marks |
+------+--------------+------------+-----------+
|    1 | apple        |         60 |        60 |
|    2 | banana       |         70 |        70 |
|    3 | orange       |         80 |        80 |
|    4 | mango        |         90 |        90 |
|    5 | grapes       |         50 |        50 |
+------+--------------+------------+-----------+
5 rows in set (0.0005 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > update students_marks set sql_marks=sql_marks+5;
Query OK, 5 rows affected (0.0025 sec)

Rows matched: 5  Changed: 5  Warnings: 0
 MySQL  localhost:33060+ ssl  82r  SQL > select * from students_marks;
+------+--------------+------------+-----------+
| s_id | student_name | java_marks | sql_marks |
+------+--------------+------------+-----------+
|    1 | apple        |         60 |        65 |
|    2 | banana       |         70 |        75 |
|    3 | orange       |         80 |        85 |
|    4 | mango        |         90 |        95 |
|    5 | grapes       |         50 |        55 |
+------+--------------+------------+-----------+
5 rows in set (0.0005 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > update students_marks set java_marks=60 and set sql_marks<50;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'set sql_marks<50' at line 1
 MySQL  localhost:33060+ ssl  82r  SQL > update students_marks set java_marks=60 where  sql_marks<50;
Query OK, 0 rows affected (0.0024 sec)

Rows matched: 0  Changed: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  82r  SQL > select * from students_marks;
+------+--------------+------------+-----------+
| s_id | student_name | java_marks | sql_marks |
+------+--------------+------------+-----------+
|    1 | apple        |         60 |        65 |
|    2 | banana       |         70 |        75 |
|    3 | orange       |         80 |        85 |
|    4 | mango        |         90 |        95 |
|    5 | grapes       |         50 |        55 |
+------+--------------+------------+-----------+
5 rows in set (0.0005 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > update students_marks set sql_marks=0 where sql_marks is null;
Query OK, 0 rows affected (0.0005 sec)

Rows matched: 0  Changed: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  82r  SQL > select * from students_marks;
+------+--------------+------------+-----------+
| s_id | student_name | java_marks | sql_marks |
+------+--------------+------------+-----------+
|    1 | apple        |         60 |        65 |
|    2 | banana       |         70 |        75 |
|    3 | orange       |         80 |        85 |
|    4 | mango        |         90 |        95 |
|    5 | grapes       |         50 |        55 |
+------+--------------+------------+-----------+
5 rows in set (0.0006 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > delete from students_marks where java_marks<35;
Query OK, 0 rows affected (0.0022 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > select * from students_marks;
+------+--------------+------------+-----------+
| s_id | student_name | java_marks | sql_marks |
+------+--------------+------------+-----------+
|    1 | apple        |         60 |        65 |
|    2 | banana       |         70 |        75 |
|    3 | orange       |         80 |        85 |
|    4 | mango        |         90 |        95 |
|    5 | grapes       |         50 |        55 |
+------+--------------+------------+-----------+
5 rows in set (0.0005 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > select * from students_marks where sql_marks<70;
+------+--------------+------------+-----------+
| s_id | student_name | java_marks | sql_marks |
+------+--------------+------------+-----------+
|    1 | apple        |         60 |        65 |
|    5 | grapes       |         50 |        55 |
+------+--------------+------------+-----------+
2 rows in set (0.0006 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > select * from students_marks where sql_marks>60 and java_marks>60;
+------+--------------+------------+-----------+
| s_id | student_name | java_marks | sql_marks |
+------+--------------+------------+-----------+
|    2 | banana       |         70 |        75 |
|    3 | orange       |         80 |        85 |
|    4 | mango        |         90 |        95 |
+------+--------------+------------+-----------+
3 rows in set (0.0006 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > select * from students_marks where sql_marks=%60% and java_marks=%60%;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '%60% and java_marks=%60%' at line 1
 MySQL  localhost:33060+ ssl  82r  SQL > select * from students_marks where sql_marks>60 and java_marks>60;
+------+--------------+------------+-----------+
| s_id | student_name | java_marks | sql_marks |
+------+--------------+------------+-----------+
|    2 | banana       |         70 |        75 |
|    3 | orange       |         80 |        85 |
|    4 | mango        |         90 |        95 |
+------+--------------+------------+-----------+
3 rows in set (0.0006 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > select * from students_marks where java_marks between 50 and 80;
+------+--------------+------------+-----------+
| s_id | student_name | java_marks | sql_marks |
+------+--------------+------------+-----------+
|    1 | apple        |         60 |        65 |
|    2 | banana       |         70 |        75 |
|    3 | orange       |         80 |        85 |
|    5 | grapes       |         50 |        55 |
+------+--------------+------------+-----------+
4 rows in set (0.0025 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > select * from students_marks where student_name=%s;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '%s' at line 1
 MySQL  localhost:33060+ ssl  82r  SQL > select * from students_marks where student_name like s%;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '%' at line 1
 MySQL  localhost:33060+ ssl  82r  SQL > select * from students_marks where student_name like 's%';
Empty set (0.0021 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > select * from students_marks where sql_marks!=not null;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'not null' at line 1
 MySQL  localhost:33060+ ssl  82r  SQL > select * from students_marks where sql_marks=! null;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '=! null' at line 1
 MySQL  localhost:33060+ ssl  82r  SQL > Display students whose SQL marks are NOT NULL.
                                      -> ;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Display students whose SQL marks are NOT NULL.' at line 1
 MySQL  localhost:33060+ ssl  82r  SQL > select * from students_marks where sql_marks is not null;
+------+--------------+------------+-----------+
| s_id | student_name | java_marks | sql_marks |
+------+--------------+------------+-----------+
|    1 | apple        |         60 |        65 |
|    2 | banana       |         70 |        75 |
|    3 | orange       |         80 |        85 |
|    4 | mango        |         90 |        95 |
|    5 | grapes       |         50 |        55 |
+------+--------------+------------+-----------+
5 rows in set (0.0006 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > select * from students_marks where java_marks=60 or java_marks=70 or java_marks=80;
+------+--------------+------------+-----------+
| s_id | student_name | java_marks | sql_marks |
+------+--------------+------------+-----------+
|    1 | apple        |         60 |        65 |
|    2 | banana       |         70 |        75 |
|    3 | orange       |         80 |        85 |
+------+--------------+------------+-----------+
3 rows in set (0.0006 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > start transaction;
Query OK, 0 rows affected (0.0004 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > update students_marks set sql_marks=sql_marks+10;
Query OK, 5 rows affected (0.0021 sec)

Rows matched: 5  Changed: 5  Warnings: 0
 MySQL  localhost:33060+ ssl  82r  SQL > select * from students_marks;
+------+--------------+------------+-----------+
| s_id | student_name | java_marks | sql_marks |
+------+--------------+------------+-----------+
|    1 | apple        |         60 |        75 |
|    2 | banana       |         70 |        85 |
|    3 | orange       |         80 |        95 |
|    4 | mango        |         90 |       105 |
|    5 | grapes       |         50 |        65 |
+------+--------------+------------+-----------+
5 rows in set (0.0012 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > savepoint bonus_added;
Query OK, 0 rows affected (0.0019 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > delete from students_marks where sql<40;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'sql<40' at line 1
 MySQL  localhost:33060+ ssl  82r  SQL > delete from students_marks where sql_marks<40;
Query OK, 0 rows affected (0.0005 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > select * from students_marks;
+------+--------------+------------+-----------+
| s_id | student_name | java_marks | sql_marks |
+------+--------------+------------+-----------+
|    1 | apple        |         60 |        75 |
|    2 | banana       |         70 |        85 |
|    3 | orange       |         80 |        95 |
|    4 | mango        |         90 |       105 |
|    5 | grapes       |         50 |        65 |
+------+--------------+------------+-----------+
5 rows in set (0.0009 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > rollback to savepoint bonus_added;
Query OK, 0 rows affected (0.0003 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > commit;
Query OK, 0 rows affected (0.0021 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > grant select on students_marks to student@localhost;
ERROR: 1410: You are not allowed to create a user with GRANT
 MySQL  localhost:33060+ ssl  82r  SQL > revoke update on students_marks from student@localhost;
ERROR: 1147: There is no such grant defined for user 'student' on host 'localhost' on table 'students_marks'
 MySQL  localhost:33060+ ssl  82r  SQL > select student_name, (java_marks+sql_marks) as total_marks from students_marks;
+--------------+-------------+
| student_name | total_marks |
+--------------+-------------+
| apple        |         135 |
| banana       |         155 |
| orange       |         175 |
| mango        |         195 |
| grapes       |         115 |
+--------------+-------------+
5 rows in set (0.0006 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > select * from students_marks where (sql_marks%10)=0;
Empty set (0.0018 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > update students_marks set java_marks=java_marks+5 where java_marks between 60 and 75;
Query OK, 2 rows affected (0.0028 sec)

Rows matched: 2  Changed: 2  Warnings: 0
 MySQL  localhost:33060+ ssl  82r  SQL > select * from students_marks;
+------+--------------+------------+-----------+
| s_id | student_name | java_marks | sql_marks |
+------+--------------+------------+-----------+
|    1 | apple        |         65 |        75 |
|    2 | banana       |         75 |        85 |
|    3 | orange       |         80 |        95 |
|    4 | mango        |         90 |       105 |
|    5 | grapes       |         50 |        65 |
+------+--------------+------------+-----------+
5 rows in set (0.0005 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > delete from students_marks where sql_marks != java_marks;
Query OK, 5 rows affected (0.0029 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > select * from students_marks;
Empty set (0.0005 sec)
 MySQL  localhost:33060+ ssl  82r  SQL > 
