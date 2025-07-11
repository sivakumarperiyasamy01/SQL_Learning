select* from user;

-- sql constraints 

-- 1. primary key for single coulmn  -- it doesnot allow duplicate entry and not allow null 
 
create table userinfo (sno int, name varchar(100), location varchar(100) ,accountnum int primary key , phonenumber int );

insert into userinfo (sno, name, location, accountnum, phonenumber) values (1,'siva','erode',45689,1234);
insert into userinfo (sno, name, location, accountnum, phonenumber) values (2,'santhi','kgm',7896,4569);
insert into userinfo (sno, name, location, accountnum, phonenumber) values (3,'gowmi','tpr',45710,0000);

desc userinfo;
-- try to add duplicate values for primary key column 
insert into userinfo (sno, name, location, accountnum, phonenumber) values (4,'eswari','tpr',45689,14789);
--  09:49:47	insert into userinfo (sno, name, location, accountnum, phonenumber) values (4,'eswari','tpr',45689,14789)	Error Code: 1062. Duplicate entry '45689' for key 'userinfo.PRIMARY'	0.000 sec



-- composite primary key  -- either primary key can be duplicate but both doesnot allow 

create table userinfo_1 (sno int, name varchar(100), accountnum int, phonenumber int, primary key( accountnum,phonenumber));

insert into userinfo_1 (sno, name, accountnum, phonenumber) values (1,'siva',45689,1234);
insert into userinfo_1(sno, name, accountnum, phonenumber) values (2,'santhi',7896,4569);
insert into userinfo_1(sno, name, accountnum, phonenumber) values (3,'gowmi',45710,0000);

select*from userinfo_1;

-- try to add duplicates for account num and phonenumber primary key 
insert into userinfo_1(sno, name, accountnum, phonenumber) values (4,'ravi',45710,0000);  -- both account num and phonenum duplicate does not allow
-- 10:06:45	insert into userinfo_1(sno, name, accountnum, phonenumber) values (4,'ravi',45710,0000)	Error Code: 1062. Duplicate entry '45710-0' for key 'userinfo_1.PRIMARY'	0.016 sec


-- composite primary key  -- either primary key can be duplicate but both doesnot allow 
insert into userinfo_1(sno, name, accountnum, phonenumber) values (5,'rathi',45710,5689);  -- account number duplicate it allows 
insert into userinfo_1(sno, name, accountnum, phonenumber) values (6,'sakthi',12478,5689); -- phone number duplicate it allows 



-- 2. unique constraint 

-- unique doesnot allow duplicates and allows null 

create table userinfo_2(sno int, name varchar(100), accountnum int, phonenumber int unique );
insert into userinfo_2 (sno, name, accountnum, phonenumber) values (1,'gow',6854,null);  -- unique  allows null
insert into userinfo_2 (sno, name, accountnum, phonenumber) values (1,'santhi',6854,10101);

insert into userinfo_2 (sno, name, accountnum, phonenumber) values (2,'siva',45689,10101); -- unique doesnot allows duplicates 
-- 10:17:18	insert into userinfo_2 (sno, name, accountnum, phonenumber) values (2,'siva',45689,10101)	Error Code: 1062. Duplicate entry '10101' for key 'userinfo_2.phonenumber'	0.047 sec


select*from userinfo_2;


-- dff between primary key and unique 
/* 
		primary key doesnot allow null and duplicates
        unique allows null and doesnot allow duplicates 
        composite primary key - either one primary key can be duplicate but both doesnot allow 
*/
