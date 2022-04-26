
use lib_db;
-- 转换成大写
SELECT UPPER('Hello World');
-- 转换成小写
SELECT LOWER('Hello World');
-- 把名字转换成大写
SELECT UPPER(name) FROM python_libs;
-- 配合CONCAT使用
SELECT CONCAT('我最喜欢的技术库是', UPPER(name)) FROM python_libs;
-- 配合CONCAT使用
SELECT CONCAT('我最喜欢的技术库是', LOWER(name)) FROM python_libs;
