-- Group By 
-- The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".
-- The GROUP BY statement is often used with aggregate functions :
-- (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.

select *
from store;

select avg(rent), store_name
from store
group by store_name
order by avg(rent) desc;


