use libs_db;

SELECT REPLACE('Hello World', 'Hell', '%$#@') as new;
SELECT REPLACE('Hello World', 'l', '7');
SELECT REPLACE('Hello World', 'o', '0');
SELECT REPLACE('HellO World', 'o', '*');
SELECT REPLACE('cheese bread coffee milk', ' ', ' and ');

select REPLACE(category, ' ', '-') from python_libs;

select REPLACE(category, 'Web', 'Webpage') from python_libs;


