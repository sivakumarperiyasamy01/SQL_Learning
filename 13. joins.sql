
create database customers;

use customers;

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


-- join / innerjoin 
-- reuquirement- give me resturants name with order date in restaruant

select 
r.name,o.order_date
from Restaurants as r join Orders as o on id=restaurant_id;

-- left join 
-- give me all resturant name along with restaturant order date 

select 
r.name,o.order_date
from Restaurants as r Left join Orders as o on id=restaurant_id;

-- Right join 
-- give me all order dates along with restaurant name

select 
r.name, o.order_date
from Restaurants as r  Right join Orders as o on id=restaurant_id;


-- self join 
create table emprecords (id int, emp_name varchar(10),manager_id int);

insert into emprecords (id,emp_name,manager_id) values
(1,'siva',4),
(2,'ram',4),
(3,'turuve',4),
(4, 'ravi',null);

select*from emprecords;

-- self join 
-- requirement - give me each employess manager name

select 
	e.emp_name,
    m.emp_name
from emprecords as e join emprecords m on e.manager_id=m.id;

-- more than one join 





