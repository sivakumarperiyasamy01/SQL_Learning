-- not null constraint
-- check constraint

create table userinfo4(sno int , name varchar(100) not null ,location varchar(100) not null,
 salary int);
 
 insert into userinfo4(sno,name,location,salary) values(1,'ravi','erode',100);
 insert into userinfo4(sno,name,location,salary) values(2,'velu','tpr',120);
 insert into userinfo4(sno,name,location,salary) values(3,'ravi','anbu',150);
 insert into userinfo4(sno,name,location,salary) values(4,'','',100);
  
-- not null constraint --if i try to give null for this notnull constriant it wont allow 
insert into userinfo4(sno,name,location,salary) values(6,null,null,100);
 
-- 08:01:39	insert into userinfo4(sno,name,location,salary) values(6,null,null,100)	Error Code: 1048. Column 'name' cannot be null	0.000 sec
select*from userinfo4;

-- check constraint
create table userinfo5(sno int , name varchar(100) not null ,location varchar(100) not null,
salary decimal(10,2) check (salary>0));
insert into userinfo5(sno,name,location,salary) values(1,'ravi','erode',100);
insert into userinfo5(sno,name,location,salary) values(2,'velu','tpr',200);


-- check constraint with condition 
insert into userinfo5(sno,name,location,salary) values(3,'anbu','covai',-200);
-- 08:09:28	insert into userinfo5(sno,name,location,salary) values(3,'anbu','covai',-200)	Error Code: 3819. Check constraint 'userinfo5_chk_1' is violated.	0.047 sec






