-- Displaying Tables
-- DISTINCT Clause

select *
from Users;

select distinct FirstName  -- The SELECT DISTINCT statement is used to return only distinct (different) values.
from Users;

select *
from Products;

select *
from Orders;

select * 
from OrderDetails;

select * 
from OrderDetails
limit 3;  -- initial first 3 records will be displayed 


