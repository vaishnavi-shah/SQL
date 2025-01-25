-- Aggregate functions 
-- MIN() - returns the smallest value within the selected column
-- MAX() - returns the largest value within the selected column
-- COUNT() - returns the number of rows in a set
-- SUM() - returns the total sum of a numerical column
-- AVG() - returns the average value of a numerical column
-- Aggregate functions ignore null values (except for COUNT()).

select min(Price) as min_price
from Products;

select max(Price) as max_price
from Products;

select avg(Price) as avg_price
from Products;

select sum(Price) as total_price
from Products;

select count(FirstName) as total_people
from Users;

