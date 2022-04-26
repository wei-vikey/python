use book_store;

-- 查询所有的书籍，标题中包含 python 关键词
select title, rating_nums from book
where title like '%python%';

-- 查询包含python关键词的书籍中，评分最高的第一名，只返回 标题、评分、年份
select title, rating_nums, pubdate
from book
where title like '%python%'
order by rating_nums desc
limit 1
;

-- 按照年份升序、评分降序两个字段排序数据，返回标题、年份、评分
select title, pubdate, rating_nums
from book
order by pubdate asc, rating_nums desc
;

-- 按作者排序，然后返回“我最喜欢的出版社-作者是： {出版社} # {作者}”，作者变大写、按作者排序
select concat(
		'我最喜欢的出版社-作者是： ',
        publisher,
        ' # ',
        upper(author)
	) as author_group
from book
order by author
;
