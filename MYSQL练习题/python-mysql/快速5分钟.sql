
-- 新建数据库
create database mydb;
-- 查看数据库列表
show databases;
-- 切换到数据
use mydb;

-- date	code	open	high	low	close
-- 2021/1/4	sh.600519	1999.98	2004.99	1983.81	1997
create table stock(
	id bigint(20) auto_increment,
	date char(10) comment '日期',
    code varchar(50) comment '编码',
    open double comment '开盘价',
    high double comment '最高价',
    low double comment '最低价',
    close double comment '收盘价',
    primary key(id)
) default charset utf8mb4 comment '股票数据';

show tables;

-- 查看表的结构
desc stock;


-- 新增一条数据
-- 2021/1/4	sh.600519	1999.98	2004.99	1983.81	1997

insert into stock
(date, code, open, high, low, close)
values('2021/1/4','sh.600519',1999.98,2004.99,1983.81,1997);

insert into stock
(date, code, open, high, low, close)
values('2021/1/5','sh.600519',1999.98,2004.99,1983.81,1997);

-- 查询数据
select * from stock;

-- 更新数据
update stock set low=999 where id=1;

-- 删除一条记录
delete from stock where id=2;

-- 删除一个表
drop table stock;

-- 删除数据库
drop database mydb;