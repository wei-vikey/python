create database if not exists datatypes_db;

use datatypes_db;

SELECT @@SESSION.sql_mode;

drop table if exists python_lib;
create table python_lib(
	category char(6), name varchar(8)
) default char set utf8mb4;

insert into python_lib(category, name) values('web', 'flask');
insert into python_lib(category, name) values('web', 'django');
insert into python_lib(category, name) values('data analysis', 'numpy');
insert into python_lib(category, name) values('data analysis', 'pandas');
insert into python_lib(category, name) values('spider', 'selenium');
insert into python_lib(category, name) values('spider', 'beautiful soup');

select * from python_lib;
select category, length(category), name, length(name) from python_lib;