use book_store;
-- %是通配符的意思，代表任何字符
SELECT title, rating_nums FROM book WHERE title LIKE '%人工智能%';
SELECT title, rating_nums FROM book WHERE title LIKE '%mysql%';

-- 如果%只放到最后，就实现了前缀匹配
SELECT title, rating_nums FROM book WHERE title LIKE 'mysql%';

-- 如果%放在开头，就实现了后缀匹配
SELECT title, rating_nums FROM book WHERE  title LIKE '%之道';


-- 下划线_代表单个字符
SELECT title, author FROM book WHERE author LIKE '__';
SELECT title, author FROM book WHERE author LIKE '___';
SELECT title, author FROM book WHERE author LIKE '____';

-- 下划线_代表单个字符
SELECT title, author FROM book WHERE author LIKE '吴_';
SELECT title, author FROM book WHERE author LIKE '_军';
SELECT title, author FROM book WHERE author LIKE '_庆_';

