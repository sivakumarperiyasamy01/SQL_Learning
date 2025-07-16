use employee;

-- case when 

 -- condition 
select
case
when 8>10 then 'true'
else  'false'

end as test;

-- more then one condition like else if 

select 
case
when 10>11 then 'true'
when 10<9 then 'false'
else 'not found'

end as result;


-- sample table 

CREATE TABLE CustomerData (
    id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(200),
    amount DECIMAL(10, 2)
);

INSERT INTO CustomerData VALUES
(1, 'Ravi', 'ravi@example.com', '98765', 'Chennai', 5000.00),
(2, 'Priya', NULL, '98765', 'Bangalore', NULL),
(3, 'Arjun', 'arjun@example.com', NULL, 'Hyderabad', 1500.00),
(4, 'Meena', NULL, NULL, 'Mumbai', 2500.00),
(5, 'Karthik', 'karthik@example.com', '98765', NULL, 3000.00);


-- limit using select

select* from CustomerData limit 2;

select*from CustomerData;

-- case when using column name 
-- exmaple 1 
select 
customer_name,
amount,
case 
    when amount>=5000 then 'High spender'
    when amount between 1500 and 4000 then 'mid level spender'
else 'nodata'
end as result 
from CustomerData;

-- filter table wuth phonenum and email 

select 
customer_name,
case 
   when  phone_number is null then email
   else phone_number 
end as result
from CustomerData;


-- 

select 
customer_name,
case 
	when phone_number is null and email is null then '999'
    when phone_number is null then email 
    else phone_number
    
end as result 
from CustomerData;








