DROP DATABASE IF EXISTS libs_db;
create DATABASE libs_db;
use libs_db;

-- 新建数据表
    create TABLE python_libs
(
    id          INT NOT NULL AUTO_INCREMENT,
    category    VARCHAR(100),
    name        VARCHAR(100),
    description VARCHAR(512),
    PRIMARY KEY (id)
) default char set utf8mb4;

-- 新增数据
insert into python_libs
    (category, name, description)
values ('Web Development', 'flask',
        'Flask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries.'),
       ('Web Development', 'django',
        'Django is a high-level Python web framework that encourages rapid development and clean, pragmatic design. '),
       ('Web Scraper', 'requests',
        'Requests is an elegant and simple HTTP library for Python, built for human beings.'),
       ('Web Scraper', 'beautifulsoup',
        'Beautiful Soup is a Python library for pulling data out of HTML and XML files. '),
       ('Web Scraper', 'selenium',
        'Selenium is an umbrella project for a range of tools and libraries that enable and support the automation of web browsers.'),
       ('Data Analysis', 'numpy', 'NumPy is the fundamental package for scientific computing in Python'),
       ('Data Analysis', 'pandas',
        'pandas is a fast, powerful, flexible and easy to use open source data analysis and manipulation tool, built on top of the Python programming language.'),
       ('Data Analysis', 'matplotlib',
        'Matplotlib is a comprehensive library for creating static, animated, and interactive visualizations in Python.'),
       ('Machine Learning', 'scikit-learn',
        'Scikit-learn is an open source machine learning library that supports supervised and unsupervised learning.'),
       ('Machine Learning', 'tensorflow', 'TensorFlow is an end-to-end open source platform for machine learning.');