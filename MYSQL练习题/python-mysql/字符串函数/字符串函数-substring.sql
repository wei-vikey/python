
use libs_db;

SELECT SUBSTRING('Hello World', 1, 4);
SELECT SUBSTRING('Hello World', 7);

SELECT SUBSTRING('Hello World', 3, 8);
SELECT SUBSTRING('Hello World', -7);
select SUBSTRING(description, 1, 20) from python_libs;

select concat(SUBSTRING(description, 1, 20), '...')  from python_libs;





