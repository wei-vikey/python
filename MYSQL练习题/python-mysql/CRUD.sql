use test;

drop table student;

create table student(
  stu_id int auto_increment,
  name varchar(3),
  gender char(1),
  age int,
  primary key(stu_id)
);

show tables;

desc student;

insert into student
    (name, gender, age)
values 
       ('张磊磊', '男', 4),
       ('王宝宝', '男', 10),
       ('李翠翠', '女', 11),
       ('赵香香', '女', 4),
       ('牛强强', '男', 13),
       ('周子阳', '男', 9),
       ('陆亦双', '女', 7);

select * from student;

select name from student;
-- ctrl d
select age from student;
select stu_id from student;

select name, age from student;
select name, age, gender from student;
select name, gender, age from student;
select stu_id, name, age, gender from student;


select * from student;

select * from student where age=4;
select * from student where name='赵香香';

select stu_id from student;
select name,age from student;
select name,age from student where gender='男';
select name,age from student where stu_id = age;
select * from student ;


select name, age from  student;
-- ctrl d
select name as 姓名, age as 年龄 from  student;
select name as 姓名, age as 年龄, gender as '性 别' from  student;

desc student;


select * from student;
select * from student where name='赵香香';
update student set age=18 where name='赵香香';
update student set gender='男' where name='牛强强';

select * from student where gender='女';
update student set age=18 where gender='女';


select * from student;
-- 1、更新王宝宝的姓名为王大宝
select * from student where name='王宝宝';
update student set name='王大宝' where name='王宝宝';
-- 2、修改周子阳的年龄为10岁
select * from student where name='周子阳';
update student set age=10 where name='周子阳';
-- 3、修改所有男生的年龄为10岁
select * from student where gender='男';
update student set age=10 where gender='男';

select * from student;
select * from student where name='李翠翠';
delete from  student where name='李翠翠';


drop table student;

create table student(
  stu_id int auto_increment,
  name varchar(3),
  gender char(1),
  age int,
  primary key(stu_id)
);

insert into student
    (name, gender, age)
values 
       ('张磊磊', '男', 4),
       ('王宝宝', '男', 10),
       ('李翠翠', '女', 11),
       ('赵香香', '女', 4),
       ('牛强强', '男', 13),
       ('周子阳', '男', 9),
       ('陆亦双', '女', 7);
select * from student;


-- 题目1：删除所有4岁的学生；
select * from student where age=4; 
delete from student  where age=4; 
-- 题目2：删除所有的年龄等于ID的学生；
select * from student where age=stu_id; 
delete from student where age=stu_id; 
-- 题目3：删除所有的学生
delete from student;


