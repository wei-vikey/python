
use test;

drop table student;
create table student(
	id int auto_increment,
    name varchar(20),
    primary key(id)
) default char set utf8mb4;

desc student;

insert into student(name)
values ('小明'), ('小白');

select * from student;
