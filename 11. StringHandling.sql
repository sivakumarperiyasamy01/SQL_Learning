use employee;

-- String handling 
	-- length find 
	-- uppercase and lower case
    -- concat
    -- substring
    -- trim
    -- lpad and rpad
    -- repalce
	-- instr
    -- right and left
    -- reverse
    -- add one function to another function


CREATE TABLE CustomerData1 (
    id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(200),
    amount DECIMAL(10, 2)
);

INSERT INTO CustomerData1 VALUES
(1, 'Ravi', 'ravi@example.com', '9876', 'Chennai', 5000.00),
(2, 'Priya', 'siva@gmail.com', '9876', 'Bangalore', 7000),
(3, 'Arjun', 'arjun@example.com', '89785', 'Hyderabad', 1500.00),
(4, 'Meena', 'gow@gmail.com', '45689', 'Mumbai', 2500.00),
(5, 'Karthik', 'karthik@example.com', '9876', 'erode', 3000.00);


INSERT INTO CustomerData1 VALUES
(6, 'amu    ', 'amun@example.com', '1234', 'tpr', 7800.00);

select*from CustomerData1 ;


-- find length -- only one argument 

select length(customer_name) from CustomerData1;

-- change column to upper case -- only one argument 

select upper(address)as city_upper from CustomerData1;

 -- change column to  lower  case -- only one argument 
 
 select lower(customer_name) as customer_name_lower from CustomerData1;
 
 
 -- concat 2 columns  with hard code values and spaces 
 
 select concat(customer_name,'--',address,'--','Ind','--',amount) as useraddress from CustomerData1;
 
 
 -- substring 3 argument must , to print particular string 
 
 select subString(customer_name, 1,3) from CustomerData1;
 
 
 -- trim, lefttrim , righttrim
 
select trim(' chennai   ')as trimed;
select ltrim('    chennai')as ltrimed;
select rtrim('chennai   ')as ltrimed;


-- LPAD AND RPAD -- GIVE EXTRA CHARACTER  if customer name not having 5 character it will add it will add * for that in left side make it total 5

-- lpad
select lpad(customer_name, 8,'*') as leftpaddig from CustomerData1;

-- rpad
select rpad(customer_name, 5,'*') as leftpaddig from CustomerData1;


--  REPLACE(original_string, search_string, replacement_string)

select replace( address,'Chennai','india')as updatedaddress from CustomerData1;

-- find postion of character 

select instr(customer_name,'r') from CustomerData1;


-- to get String from right  and lefter specific characters

select right(email,4) from CustomerData1;

select left(email,5) from CustomerData1;


-- string reverse , from particular columns also 

select reverse('siva');
select reverse(email) from CustomerData1;


-- to add one function to another function 

select upper( concat(customer_name,'--',email,'--',address))as converted from CustomerData1;

select length( concat(customer_name,'--',email,'--',address))as converted from CustomerData1;

 
 
 
 
 
 
 
 
 








