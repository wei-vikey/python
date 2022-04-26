
show databases;
drop database clothes_db;
create database clothes_db;

-- id	name	color	size	last_worn

create table clothes (
	id int auto_increment,
    name varchar(100),
    color varchar(10),
    size varchar(10),
    last_worn int,
    primary key (id)
);

desc clothes;

insert into clothes
(name, color, size, last_worn)
values ('短袖', '白色', 'XL', 100),
('短袖', '黑色', 'XL', 130),
('牛仔裤', '蓝色', 'L', 20),
('牛仔裤', '黑色', 'XL', 80),
('西服', '黑色', 'XL', 200),
('毛衣', '灰色', 'XXL', 230),
('短袖', '红色', 'XL', 70),
('衬衫', '白色', 'L', 120)
;

select * from clothes;

insert into clothes
(name, color, size, last_worn)
values ('运动裤', '蓝色', 'M', 10);


-- 查询所有的衣服，只包含name、color两列
select name, color from clothes;

-- 查询所有的XL尺寸的衣服，包含所有列
select * from clothes where size='XL';
select * from clothes where size='xl';
select * from clothes where size='xL';

-- 查询所有的尺寸是XL的衣服，返回name、color、size、last_worn
select name, color, size, last_worn from clothes where size='XL';

-- 将所有的L尺寸的衣服，都改成M尺寸
select * from clothes where size='L';
update clothes set size='M' where size='L';
select * from clothes;

-- 将最近10天穿过这个衣服，改成0天
select * from clothes where last_worn=10;
update clothes set last_worn=0 where last_worn=10;
select * from clothes;

-- 将“白色”的衣服，统一改成“泛白”，并且尺寸改成L
select * from clothes where color='白色';
update clothes set color='泛白', size='L' where color='白色';
select * from clothes;

-- 删除200天以上还没穿的衣服
select * from clothes where last_worn>200;
delete from clothes where last_worn>200;
select * from clothes;

-- 删除“西服”
select * from clothes where name='西服';
delete from clothes where name='西服';
select * from clothes;

-- 删除所有的衣服
delete from clothes;
select * from clothes;

-- 删除clothes数据表
drop table clothes;

desc clothes;

