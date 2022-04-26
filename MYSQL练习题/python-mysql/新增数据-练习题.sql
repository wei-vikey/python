
use test;

drop table student_grade;
create table student_grade(
	sno varchar(10),
    course varchar(20),
    grade int);

select * from student_grade;

-- 新增一条学生成绩：（'S001', '语文', 88）
insert into student_grade
(sno, course, grade)
values ('S001', '语文', 88);

-- 新增一条学生成绩：（'S002', '语文', 99）
insert into student_grade
(sno, course, grade)
values ('S002', '语文', 99);

-- 单条语句新增3条学生成绩：
-- （'S001', '数学', 77）
-- （'S002', '数学', 66）
-- （'S001', '英语', 95）

insert into student_grade
(sno, course, grade)
values ('S001', '数学', 77), ('S002', '数学', 66), ('S001', '英语', 95);
