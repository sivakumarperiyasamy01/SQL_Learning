use employee ;

-- null handling


CREATE TABLE CustomerDetails (
    id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(200),
    amount DECIMAL(10, 2)
);

INSERT INTO CustomerDetails VALUES
(1, 'Ravi', 'ravi@example.com', '9876', 'Chennai', 5000.00),
(2, 'Priya', NULL, '9876', 'Bangalore', NULL),
(3, 'Arjun', 'arjun@example.com', NULL, 'Hyderabad', 1500.00),
(4, 'Meena', NULL, NULL, 'Mumbai', 2500.00),
(5, 'Karthik', 'karthik@example.com', '9876', NULL, 3000.00);

select*from CustomerDetails;



-- is null 

select count(*) from CustomerDetails where phone_number is null;


-- is not null

select count(*) from CustomerDetails where phone_number is not null;


--  Select Rows with at Least One Null

select 
	id,
    customer_name ,
    email ,
    phone_number ,
    address ,
    amount 
from CustomerDetails where phone_number is null and email is null;
 
select 
	id,
    customer_name ,
    email ,
    phone_number ,
    address ,
    amount 
from CustomerDetails where phone_number is null or email is null;


select 
	id,
    customer_name ,
    email ,
    phone_number ,
    address ,
    amount 
from CustomerDetails where phone_number is not null or email is not null;




-- COLAESCE -- null handling   COALESCE(column_name, 'expression')

-- amount column 

select coalesce(amount ,'0.00') as result
from CustomerDetails ;

--  The function takes multiple arguments and checks each one from left to right.
-- - It stops and returns the first value that isn't NULL

select coalesce(amount ,null ,'6.00') as result
from CustomerDetails;



-- ifnull handling    IFNULL(column_name, value_if_null)


-- if null takes 2 arguments only 

select ifnull (amount,'10','20') as result from CustomerDetails ;



-- COALESCE() function: Versatile for multiple arguments, it returns the first non-null value among them
-- IFNULL() function: Handles two arguments, returning the second if the first is null; else, it returns the first.

