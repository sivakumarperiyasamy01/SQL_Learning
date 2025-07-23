use employee;


 -- Subquery learning summary 
 
 -- 1 wayt of writing subquery select 
 -- 2 Subquery in where condition 
 -- in and exist difference
 



create table user6(sno int , name varchar(100), location varchar(100));
insert into user6 
values(1,'siva','erode'),(1,'siva','erode'),(1,'siva','erode');

create table useramount(sno int , name varchar(100), amount int);
insert into useramount
values(1,'siva',3000),(1,'siva',2000),(1,'siva',1000);


-- 1 wayt of writing subquery 

select name ,
(select max(amount) from useramount)
as amount
from user6;



-- 2 Subquery in where condition 

CREATE TABLE Restaurants (
    id INT  PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);

INSERT INTO Restaurants (id, name, location) VALUES
(1, 'ABC Bistro', 'New York'),
(2, 'The Foodie', 'Los Angeles'),
(3, 'Tasty Treat', 'Chicago');

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    restaurant_id INT NOT NULL,
    order_date DATE NOT NULL
);

INSERT INTO Orders (order_id,restaurant_id, order_date) VALUES
(1, 1, '2023-01-01'),
(2, 1, '2023-01-02'),
(3, 2, '2023-01-05'),
(4, 4, '2023-01-07');  


select name as nameofrecipe
from Restaurants 
where id in ( select order_id from Orders where order_id>1);  
-- subqurey in where condition will give you 2,3,4



-- in and exist and not exist  difference
-- exist
 -- if condition satisfied it will give you all data 
 -- we cant give value here 
 -- enitre row we will give entire row  as query it will give you entire row 
 
-- in 
-- it will check the each row where condition is met or not , if the condition met it will give you the row

select location
from Restaurants 
where exists 
( select *from Restaurants where name='ABC Bistro');  


-- from subquery 

-- ranking subquery 


-- case statement subquery 

CREATE TABLE CustomerTransactions (
    id INT PRIMARY KEY,
    login_device VARCHAR(50),
    customer_name VARCHAR(100),
    ip_address VARCHAR(20),
    product VARCHAR(100),
    amount DECIMAL(10, 2),
    is_placed BOOLEAN,
    is_viewed BOOLEAN,
    transaction_status VARCHAR(20)
);

INSERT INTO CustomerTransactions VALUES
(1, 'Mobile', 'Ravi', '192.168.1.1', 'Laptop', 50000.00, TRUE, FALSE, 'Completed'),
(2, 'Desktop', 'Priya', '192.168.1.2', 'Smartphone', 20000.00, TRUE, TRUE, 'Completed'),
(3, 'Tablet', 'Arjun', '192.168.1.3', 'Headphones', 1500.00, FALSE, TRUE, 'Failed'),
(4, 'Mobile', 'Meena', '192.168.1.4', 'Shoes', 2500.00, TRUE, FALSE, 'Completed'),
(5, 'Desktop', 'Karthik', '192.168.1.5', 'Watch', 5000.00, TRUE, TRUE, 'Completed'),
(6, 'Mobile', 'Sowmya', '192.168.1.6', 'Tablet', 15000.00, TRUE, TRUE, 'Completed'),
(7, 'Tablet', 'Ramesh', '192.168.1.7', 'Smartphone', 25000.00, FALSE, TRUE, 'Failed'),
(8, 'Desktop', 'Divya', '192.168.1.8', 'Laptop', 60000.00, TRUE, FALSE, 'Completed'),
(9, 'Mobile', 'Arun', '192.168.1.9', 'Smartwatch', 12000.00, TRUE, TRUE, 'Completed'),
(10, 'Tablet', 'Deepa', '192.168.1.10', 'Laptop', 55000.00, FALSE, FALSE, 'Pending');

select
customer_name,
case 
when 
   (select sum(amount)from CustomerTransactions)>
   (select avg(amount)from CustomerTransactions) then 'above avg'
else ' bewlo avg'
end as total
from CustomerTransactions;


-- instead of join  subquery 









