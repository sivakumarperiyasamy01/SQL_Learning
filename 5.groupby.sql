
create table emp(sno int , name varchar(100),designation varchar(100));

insert into emp (sno,name,designation) values(1,'siva','java');

with emp1 as(select sno, name from emp)
select* from emp1;

use world;

select now();

select current_date();

select current_user();


select coalesce(null,'siva') as name;
select count(*) from city;
select count(1) from city;

select*from city where name = 'Kabul';

select count(distinct CountryCode) AS COUNTRY_CODECOUNT FROM city;

select distinct CountryCode AS COUNTRY_CODECOUNT FROM city LIMIT 5;


select name, countrycode, sum(population) as total_population 
from city
group by countrycode ,name
having total_population > 20000000
order by countrycode desc
limit 2;


