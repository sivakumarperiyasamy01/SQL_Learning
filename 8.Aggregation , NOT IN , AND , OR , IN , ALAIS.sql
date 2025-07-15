create database Transactions;  -- create database

use Transactions;   -- use database to create table inside it

-- Aggregation , NOT IN , AND , OR , IN , ALAIS

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

select*from CustomerTransactions;

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


select*from CustomerTransactions;


-- aggregation functions 
-- count , minimum, maximum, average , sum,

-- count

select count(*) from CustomerTransactions;

-- count based on conditions 

-- single condition 
select count(*) from CustomerTransactions where  transaction_status='completed';

-- more than one condition 

select count(*) from CustomerTransactions 
where transaction_status='completed' and  transaction_status='failed';  -- this will fail 


-- count and give me whether completed or failed both count and give
select count(*) from CustomerTransactions 
where transaction_status='completed' or  transaction_status='failed';  

-- IN
-- instead of using or  we can use in 
-- it selects failed row as count and pending row as count
select count(*) from CustomerTransactions  where transaction_status in ('failed','pending');

-- Notin
-- except it will give remaning counts 

select count(*) from CustomerTransactions where transaction_status not in('failed','pending');

-- sum 

select sum( amount) from CustomerTransactions;

-- sum with condition 

-- from it take table and apply conditions on transaction status pick the rows and calculate the some
select sum(amount) from CustomerTransactions where transaction_status='Completed';
 
 -- asking failed  and pending transaction amount 
 select sum(amount) from CustomerTransactions where transaction_status in('failed','pending');
 
 
 -- alias 
 -- from CustomerTransactions and then apply this condition  where transaction_status='Completed' and filter it then to sum then give as another column name
 select sum(amount) as sumoftransactions from CustomerTransactions where transaction_status='Completed';
 
 
 -- minimum 
 select min(amount) as mintransactions from CustomerTransactions where transaction_status='Completed';
 
 -- maximum 
  select max(amount)  as maxtransactions from CustomerTransactions where transaction_status='Completed';
 
-- average 
select avg(amount)  as avgtransactions from CustomerTransactions where transaction_status='Completed';

-- Groupby

select  login_device ,sum(amount) as groupitemsum from CustomerTransactions
group by login_device;

-- having 
-- It filters the results after you’ve grouped and aggregated data using GROUP BY
-- - WHERE filters individual rows before grouping
-- - HAVING filters entire groups after aggregation is applied

-- from -> where->groupby->select sum of each group then  Returns login_device and its group’s sum labeled as groupitemsum
-- ->having 

select  login_device ,sum(amount) as groupitemsum from CustomerTransactions
group by login_device having sum(amount)>80000;


 








