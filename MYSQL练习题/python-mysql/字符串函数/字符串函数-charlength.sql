use libs_db;

-- 求字符串的长度
SELECT CHAR_LENGTH('Hello World');
 
-- 字段以及字段的长度
SELECT category, CHAR_LENGTH(category) AS 'length' FROM python_libs;
 
-- 使用concat做拼接
SELECT CONCAT(name, ' 有 ', CHAR_LENGTH(name), ' 个字符 ' ) FROM python_libs;
