

"""
这个脚本，用于生成insert into的sql语句的values部分

该脚本会读取excel文件，把里面的字符串值给一个默认值，然后生成SQL片段；

而这个excel文件，来自一个网络爬虫代码
  爬取的地址：https://book.douban.com/tag/%E7%BC%96%E7%A8%8B
这个网络爬虫代码，就是当前目录的文件：爬取豆瓣编程分类书籍排行榜.ipynb
  用jupyter notebook打开可以运行。
  对于爬虫技术感兴趣的可以看下蚂蚁老师的《Python开发简单爬虫》课程


"""


import pandas as pd

df = pd.read_excel("./豆瓣读取-编程分类排行榜.xlsx")

for column in ["title","author","translator","publisher"]:
  df[column] = df[column].fillna("")

with open("insert_values_sql片段.txt", "w", encoding='utf8') as f:
  for idx, row in df.iterrows():
    f.write(f"""('{row.title}', '{row.author}', '{row.translator}', '{row.publisher}', {row.pubdate}, {row.price}, {row.rating_nums}, {row.comments}),\n""")