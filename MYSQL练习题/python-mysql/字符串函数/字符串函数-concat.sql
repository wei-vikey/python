
use libs_db;

select concat('hello', 'world');
select concat('hello', '####', 'world');

select * from python_libs;
select concat(category, name) from python_libs;

select concat(category,' ', name) from python_libs;
select concat(category,', ', name) from python_libs;

select concat_ws(' ', id, category, name) from python_libs;

