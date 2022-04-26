use book_store;
-- 查询前几行数据
SELECT title FROM book LIMIT 5;
SELECT title FROM book LIMIT 1;
SELECT * FROM book LIMIT 1;

-- 结合orderby，查询排行榜前几名
SELECT title, rating_nums FROM book ORDER BY rating_nums DESC LIMIT 5;
SELECT title, rating_nums FROM book ORDER BY rating_nums DESC LIMIT 1;

-- limit position,count 从position位置开始取count个，position从0开始
SELECT title, rating_nums FROM book ORDER BY rating_nums DESC LIMIT 0,5;
SELECT title, rating_nums FROM book ORDER BY rating_nums DESC LIMIT 1,5;
SELECT title, rating_nums FROM book ORDER BY rating_nums DESC LIMIT 10,3;

-- 用途：互联网页面的分页功能，第3页取10条；就是limit 30, 10
