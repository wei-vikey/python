use book_store;

-- 按评分排列书籍，默认是升序排列
SELECT title,rating_nums FROM book ORDER BY rating_nums;
-- 按评分排列书籍，改成降序排列
SELECT title,rating_nums FROM book ORDER BY rating_nums DESC;

-- 按年份排列书籍，默认是升序排列
SELECT title,pubdate,rating_nums FROM book ORDER BY pubdate;
-- 按年份排列书籍，改成降序排列
SELECT title,pubdate,rating_nums FROM book ORDER BY pubdate DESC;

-- 可以多列同时排序
SELECT title,publisher,pubdate FROM book ORDER BY publisher, pubdate;
SELECT title,publisher,pubdate FROM book ORDER BY publisher desc, pubdate asc;

-- order by的数字，从1开始，依次对应select字段序号
-- 意思是按照pubdate排序
SELECT title,pubdate,rating_nums FROM book ORDER BY 2;
-- 意思是按rating_nums倒序
SELECT title,pubdate,rating_nums FROM book ORDER BY 3 desc;
