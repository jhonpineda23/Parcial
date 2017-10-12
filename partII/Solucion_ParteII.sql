CREATE TABLE CATEGORIES(
id int NOT NULL PRIMARY KEY,
name varchar2(255) NOT NULL,
season varchar2(255) NOT NULL)

CREATE TABLE PRODUCTS(
id int NOT NULL PRIMARY KEY,
name varchar2(255) NOT NULL,
reference varchar2(255) NOT NULL,
price decimal(10,3) NOT NULL,
category_id int
)

CREATE TABLE ANSWERS(
id int NOT NULL PRIMARY KEY,
number_of_question varchar2(255) NOT NULL,
answer varchar2(255) NOT NULL
)

ALTER TABLE PRODUCTS
ADD FOREIGN KEY (category_id) 
REFERENCES  CATEGORIES  (id);




