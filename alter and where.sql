use employee; -- use already created database 
select* from emp;

-- 1.alter table - alter columns , table name , database name

alter table emp add location varchar(100);  -- add column
alter table emp drop column location;  -- delete column
alter table  emp rename to emp1;  -- table name change

select*from emp1;

desc emp1;  -- to see structrue of the table 


-- where keyword

-- create table and inserting values into it
create table user ( sno int, name varchar(100), location varchar(100), salary decimal(10,2));

alter table user modify location varchar(100);  -- to midify the existing column type 

insert into user (sno, name, location, salary) values (1,'siva','erode',1000.00);
insert into user (sno, name, location, salary) values (2,'saran','kgm',500.00);
insert into user (sno, name, location, salary) values (3,'sowmi','tpr',250.00);
insert into user (sno, name, location, salary) values (4,'logesh','covai',750.00);


-- 2. where keyword
-- where condition  filter particular records based on condition 
select* from user where salary>500;

-- order by decending order and ascending order 
select* from user where salary>500 
order by salary desc ;  

-- more than one where condition 
select *from user where salary>=500 and location='kgm';









