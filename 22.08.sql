create database student_database;
create database marks_database;

use student_database;
create table user(id int unsigned primary key not null auto_increment, name varchar(100), email varchar(100));

create database shop;
create table items (item_id int, item_name varchar(50), item_quantity int);
insert into items(item_id,item_name,item_quantity) value(1,'soap',20);
insert into items(item_id,item_name,item_quantity) value(2,'powder',30);
insert into items(item_id,item_name,item_quantity) value(3,'rice',40);
insert into items(item_id,item_name,item_quantity) value(4,'oil',20);

select * from items;
select item_id, item_quantity from items;
select item_name from items;

insert into items (item_id,item_name,item_quantity) value(5,"meat",80), (6,"olive",100);



create database college;
create table student(stu_id int unsigned primary key auto_increment,stu_name varchar(100), stu_branch char(60), stu_address varchar(100),stu_phone int(10));
insert into student(stu_id,stu_name,stu_branch,stu_address,stu_phone) value(1,"Arghya","CSE","Dhundhera gurgaon",1234567899);
select * from student; 
insert into student(stu_id,stu_name,stu_branch,stu_address,stu_phone) value(2,"Makhan","IT","Huda city",5678943210),(3,"Kunal","AI","Newdelhi",7891234560),(4,"Sita","MCA","MG road gurgaon",8976543210),(5,"Jadav","ECE","Sikandarpur gurgaon",9876543210);

alter table student
modify stu_phone long;  

select * from student;

update items
set item_name = "Basanti rice"
where item_quantity = 3;

select * from items;

drop database student_database;

update items
set item_name = "Basunti_rice", item_quantity = 200
where item_id =3;

select * from items;

select * from items
order by item_name;

select * from items
order by item_quantity;

select * from items
where item_quantity <60;

create database demo;
create table hello(id int, name varchar(50));






use marks_database;
create table users (user_id int, action char(50), Date DATE);

insert into users (user_id, action, date) value (1,'start', CAST('01-01-20' AS date)),
(1,'cancel', CAST('01-02-20' AS date)),
(2,'start', CAST('01-03-20' AS date)),
(2,'publish', CAST('01-04-20' AS date)),
(3,'start', CAST('01-05-20' AS date)),
(3,'cancel', CAST('01-06-20' AS date)),
(1,'start', CAST('01-07-20' AS date)),
(1,'publish', CAST('01-08-20' AS date));

select * from users;

select * from users
order by 1;

create database assign;

create table users (user_id int, action char(50), Date DATE);

insert into users (user_id, action, date) value (1,'start', CAST('20-01-01' AS date)),
(1,'cancel', CAST('20-02-01' AS date)),
(2,'start', CAST('20-03-01' AS date)),
(2,'publish', CAST('20-04-01' AS date)),
(3,'start', CAST('20-05-01' AS date)),
(3,'cancel', CAST('20-06-01' AS date)),
(1,'start', CAST('20-07-01' AS date)),
(1,'publish', CAST('20-08-01' AS date));

select * from users;

create database school;
use school;
 
create database college;
create table user ( student_id  int ,name varchar(100),email_id varchar(100 ) ,phone_no varchar(100), branch varchar(30) );
insert into user value ( 1,"abc", "abc@gmail.com",9900886621,"ME") ;
insert into user value ( 2,"xyz", "xyz@gmail.com",0987654321,"Civil") ;
insert into user value ( 3,"pqs", "pqs@gmail.com",9068754321,"CSE") ;
insert into user value ( 4,"mno", "mno@gmail.com",9182736405,"IT") ;
insert into user value ( 5,"jbl", "jbl@gmail.com",9998881110,"BBC") ;
insert into user value ( 6,"ppl", "ppl@gmail.com",8862134067,"MCA") ;
insert into user value ( 7,"qms", "qms@gmail.com",9432150769,"Mt") ;
 select * from user;
 
SELECT COUNT (branch) AS TotalBranch FROM user ; 


use shop;
select item_id, get_name (3), item_quantity from items;
select * from items;

set @newid = 0;
call shop.search_namev2('meat', @newid);
select @newid;

CREATE VIEW item_VIEW AS
SELECT item_id, quantity
FROM  items;
 
UPDATE item_VIEW
   SET quantity = 200
   WHERE item_id = 1;
   
SELECT * FROM item_VIEW;




use joins_demo;
select * from customer;
select * from order_items;

CREATE VIEW Sale_History AS  
SELECT customer.NAME, customer.SALARY, order_items.quantity, order_items.AMOUNT  
FROM customer, order_items  
WHERE customer.ID = order_items.ID; 
 
select * from sale_history;

update Sale_History
		set salary = 5300
        where quantity = 34454 ;
        
        
-- indexes
-- [ CREATE INDEX idx_lastname
# ON sales_part (Name); ]

CREATE UNIQUE INDEX index_name
on items (item_name);

USE joins_demo;
CREATE TABLE article_tags(
  article_id INT,
  tag_id   INT,
  PRIMARY KEY(article_id,tag_id)
);

DELIMITER $$
CREATE PROCEDURE insert_article_tags(IN article_id INT, IN tag_id INT)
BEGIN
 DECLARE CONTINUE HANDLER FOR 1062
 SELECT CONCAT('duplicate keys (',article_id,',',tag_id,') found') AS msg;
 -- insert a new record into article_tags
 INSERT INTO article_tags(article_id,tag_id)
 VALUES(article_id,tag_id);
 -- return tag count for the article
 SELECT COUNT(*) FROM article_tags;
END$$
DELIMITER ;

CALL insert_article_tags(1,1);
CALL insert_article_tags(1,2);
CALL insert_article_tags(1,3);


-- T SQL

create database sample;
CREATE TABLE Product (
 Product_id INT PRIMARY KEY,  
 Product_name VARCHAR(40),  
 Price INT,
 Quantity INT
);

INSERT INTO Product VALUES(111, 'Mobile', 10000, 10),
(112, 'Laptop', 20000, 15),
(113, 'Mouse', 300, 20),
(114, 'Hard Disk', 4000, 25),
(115, 'Speaker', 3000, 20);

CREATE TABLE bankaccounts(accountno varchar(20) PRIMARY KEY NOT NULL, funds decimal(8,2));
INSERT INTO bankaccounts VALUES("ACC1", 1000), 
("ACC2", 1000);
select * from bankaccounts;

START TRANSACTION ;-- or BEGIN; --statement1
UPDATE bankaccounts SET funds=funds-100 WHERE accountno='ACC1'; -- statement2
UPDATE bankaccounts SET funds=funds+100 WHERE accountno='ACC2'; -- statement3
COMMIT; -- statement4 
 
SELECT * FROM bankaccounts;
 
START TRANSACTION; -- statement1
UPDATE bankaccounts SET funds=funds+100 WHERE accountno='ACC1'; -- statement2
UPDATE bankaccounts SET funds=funds-100 WHERE accountno='ACC2'; -- statement3
ROLLBACK; -- statement4
 

CREATE TABLE item (
date DATE,  
item VARCHAR(40)
  );
  INSERT INTO item VALUES('2020-01-01','apple'),
  ('2020-01-01','apple'),
  ('2020-01-01','pear'),
  ('2020-01-01','pear'),
  ('2020-02-01','pear'),
  ('2020-02-01','pear'),
  ('2020-02-01','pear'),
  ('2020-02-01','orange');
   
select * from item;

select * from item group by item order by count(2)  ;
