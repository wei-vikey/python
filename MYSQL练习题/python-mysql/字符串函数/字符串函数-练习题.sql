use libs_db;

-- 问题1：实现这句话的反转并且变大写'i like these python libs'
select upper(reverse('i like these python libs'));
select reverse(upper('i like these python libs'));

-- 问题2：将多个单词用空格拼接在一起，然后把空格替换成中划线
-- 输入多个单词：i、like、python；输出：i-like-python
select replace(concat_ws(' ', 'i', 'like', 'python'), ' ', '-');

-- 问题3：把python_libs数据表中的category中，空格替换成->
select replace(category, ' ', '->') from python_libs;

select 
	concat(substring(description,1,10),'...') as 'short desc',
    concat(category, ',', name) as full_name,
    concat('ID是', id) as lib_id
from python_libs;