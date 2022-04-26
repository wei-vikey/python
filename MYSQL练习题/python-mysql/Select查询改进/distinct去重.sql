use book_store;
-- 查询出版社列表，会发现很多重复
SELECT publisher FROM book;

-- 获取去重后的出版社列表
SELECT DISTINCT publisher FROM book;

-- 可以多个字段同时去重
SELECT publisher, pubdate FROM book;
SELECT DISTINCT publisher, pubdate FROM book;

-- 可以先concat，对concat后的字符串去重
SELECT CONCAT(publisher,' ', pubdate) FROM book;
SELECT DISTINCT CONCAT(publisher,' ', pubdate) FROM book;
