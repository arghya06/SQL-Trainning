create database Join_function;
create table country
       (cn_id int primary key NOT NULL,
        cn_name VARCHAR(30),
        cn_code varchar(15),
        cu_region char(20));
        
create table city
       (c_id int primary key NOT NULL,
        c_name VARCHAR(30),
        c_code varchar(15),
        cn_id int,
        FOREIGN KEY (cn_id) REFERENCES country(cn_id));
        
insert into country (cn_id ,cn_name ,cn_code ,cu_region) values (001, 'India','091','Asia') ,
(002, 'Bangladesh','093','Asia') ,
(231, 'Nigeria','831','Africa');

insert into city (c_id ,c_name ,c_code ,cn_id) values (024, 'Delhi','DLH',001) ,
(084, 'Haryana','HRN',001) ,
(010, 'Dhaka','DHK',002);

select * from country;
select * from city;


-- left join
Select NAME, AMOUNT, DATE1
from CUSTOMER
left join ORDER_ITEMS
ON CUSTOMER.ID = ORDER_ITEMS.ID;

-- right join
select NAME, AMOUNT, DATE1
from CUSTOMER
right join ORDER_ITEMS
ON CUSTOMER.ID = ORDER_ITEMS.ID;

-- Full outer join
SELECT NAME, AGE, SALARY, ORDER_ITEMS.amount,order_items.DATE1
FROM CUSTOMER
FULLOUTER JOIN ORDER_ITEMS
ON age <42 and DATE1 = '2008-11-11';

-- inner join
select country.cn_id, country.cn_name, city.c_name, city.c_code 
from country inner join city
on country.cn_id = city.cn_id;

-- cross join 
SELECT * FROM country CROSS JOIN city;

-- self join
SELECT  *
FROM country S1, city S2
WHERE s1.cn_id = s2.cn_id;











Create database task;
use task;
create table Table_A
 ( id int primary key not null);
 
 insert into Table_A (id) values(1), (2), (3);
 
 create table Table_B
 ( id int ,
 FOREIGN KEY (id) REFERENCES Table_A(id));
 
 insert into Table_B (id) values(1), (1), (2);
 
 select * from Table_B;
 
 -- Inner join
 select *
from Table_A inner join Table_B
on Table_A.id = Table_B.id;

-- Full join
select * from Table_A left join Table_B
ON Table_A.id = Table_B.id
union
select * from Table_A right join Table_B
ON Table_A.id = Table_B.id;

-- left join 
select Table_A.id 
from Table_A
left join Table_B
ON Table_A.id = Table_B.id;

-- Right join 
select Table_B.id 
from Table_A
right join Table_B
ON Table_A.id = Table_B.id;

-- cross join
SELECT * FROM Table_A CROSS JOIN Table_B;
select count(Table_A.id) from Table_A CROSS JOIN Table_B; 


create table Table_C
 ( id1 int );
 
 insert into Table_C (id1) values(1), (2), (3), (null);
 
 create table Table_D
 ( id1 int );
-- FOREIGN KEY (id1) REFERENCES Table_C(id1));
 
 insert into Table_D (id1) values(1), (2), (2), (3), (NULL);
 
 select * from Table_D ;
 
 -- Inner join
 select *
from Table_C inner join Table_D
on Table_C.id1 = Table_D.id1;

-- Full join
select * from Table_C left join Table_D
ON Table_C.id1 = Table_D.id1
union
select * from Table_D right join Table_C
ON Table_C.id1 = Table_D.id1;

-- left join 
select Table_C.id1 
from Table_C
left join Table_D
ON Table_C.id1 = Table_D.id1;

-- Right join 
select Table_D.id1 
from Table_D
right join Table_C
ON Table_C.id1 = Table_D.id1;

-- cross join
SELECT * FROM Table_C CROSS JOIN Table_D;
select count(Table_C.id1) from Table_C CROSS JOIN Table_D; 