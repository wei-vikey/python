show databases;
use test;

drop table student;
create table student(
	name varchar(3),
    gender char(1),
    age int);
desc student;

insert into student(name, gender, age)
values ('李小明', '男', 18);

insert into student(gender, name, age)
values ('男', '李小明', 18);


select * from student;

insert into student
(name, gender, age)
values
	('张大棒', '男', 17),
    ('李小翠', '女', 19),
    ('王大宝', '男', 20);

-- 错误1：类型不对，age是数字，写了个字符串
insert into 
student(name, gender, age) 
values('小明', '男', 33);

-- 错误2：长度超出限制，name字段太长
insert into 
student(name, gender, age) 
values('小明是', '男', 18);

desc student;

insert into 
student(name, gender) 
values('小明是', '男');

select * from student;

insert into 
student() 
values();


drop table student2;
create table student2(
  name varchar(3) not null,
  gender char(1) not null,
  age int not null
);

desc student2;

insert into 
student2(name, gender) 
values('小明是', '男');

insert into 
student2() 
values();


create table student3(
  name varchar(3) default '未知',
  gender char(1) default '男',
  age int default 18
);

desc student3;

insert into 
student3(name, gender) 
values('小明是', '男');

insert into 
student3(name) 
values('小白');

select * from student3;


insert into 
student3() 
values();


create table student4(
  name varchar(3) not null default '未知',
  gender char(1) not null default '男',
  age int not null default 18
);

insert into 
student4(name) 
values('小白');

select * from student4;

insert into 
student4(name, gender) 
values('小白', null);


create table student_unique(
  sno int,
  name varchar(3),
  gender char(1),
  age int,
  primary key(sno)
);

select * from student_unique;

insert into 
student_unique(sno, name, gender, age) 
values(1, '小张', '男', 18);

insert into 
student_unique(sno, name, gender, age) 
values(2, '小张', '男', 18);

insert into 
student_unique(sno, name, gender, age) 
values(2, '小李', '男', 18);


create table student_incre(
  sno int auto_increment,
  name varchar(3),
  gender char(1),
  age int,
  primary key(sno)
);

desc student_incre;

insert into 
student_incre(name, gender, age) 
values('小白', '男', 18);

select * from student_incre;
