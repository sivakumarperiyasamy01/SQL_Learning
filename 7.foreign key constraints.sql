use employee;

-- Foriegn key
-- create a table set as primary key to act as  foreign key in another table 
-- it is parent 

create table deparment (
sno int, 
dep varchar(100) primary key);

alter table deparment rename to department;

insert into department(
sno,dep) 
values(1,'hr');

insert into department(sno,dep)
values (2,'It'),(3,'testing');

-- child using foreign key 
create table student (
sno int, 
s_ID int, 
name varchar(100),
dep varchar(100),
foreign key(dep) references department(dep)
);


insert into student (sno,s_ID, name, dep) values(1,200,'siva','hr');
insert into student (sno,s_ID, name, dep) values(2,205,'gow','testing');
-- 
insert into student (sno,s_ID, name, dep) values(3,305,'ram','dev');

-- 19:38:21	insert into student (sno,s_ID, name, dep) values(3,305,'ram','dev')
-- Error Code: 1452. Cannot add or update a child row: 
-- a foreign key constraint fails (`employee`.`student`, CONSTRAINT `student_ibfk_1` FOREIGN KEY (`dep`) REFERENCES `department` (`dep`))	0.015 sec

-- foreign key uses 
-- cant delete parent rows because it act as foriegn key in another table 
delete from department where sno=2;


-- ondelete cascade
-- when i delete a record on parent where it delete the records that child use as foreign key 

create table user1 (
sno int, 
userid int, 
name varchar(100),
dep varchar(100),
foreign key(dep) references department(dep) on delete cascade
);

insert into user1(sno,userid,name,dep) 
values
(1,40,'siva','testing'),
(2,85,'tam','hr'),
(3,47,'ram','hr');

delete from department where sno=2;


-- soft delete 

create table user3(
sno int primary key, 
name varchar(100), 
isdelete boolean default false);

insert into user3(sno, name)
 values
 ( 1,'siva'),
 (2,'jk'),
 (3,'kumar');

-- softdelete 
update user3 set isdelete=true where sno=2;


-- default 
-- if we not provide any value for country defalut it will take it 

create table user4(
sno int primary key, 
name varchar(100), 
country varchar(100) default 'india');


INSERT INTO user4(sno, name) VALUES (1, 'Siva');
INSERT INTO user4(sno, name,country) VALUES (2, 'Siva','us');
INSERT INTO user4(sno, name) VALUES (3, 'santhi');

select*from user4;











