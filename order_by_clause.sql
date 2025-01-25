-- Order By
-- syntax
-- SELECT column1, column2, ...
-- FROM table_name
-- ORDER BY column1, column2, ... ASC|DESC;

select *
from Users
order by Email;  -- by default ascending order

select *
from Products
order by Price desc; -- descending order

select *
from Products
order by Price asc;  -- ascending order
