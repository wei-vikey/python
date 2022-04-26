
use libs_db;

-- 字符串的反转
SELECT REVERSE('Hello World');
 -- 反转
SELECT REVERSE(category) FROM python_libs;
 
-- 和concat的配合使用
SELECT CONCAT('python', REVERSE('python'));
 
-- 和concat的配合使用
SELECT CONCAT(category, REVERSE(name)) FROM python_libs;
