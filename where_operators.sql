-- Where Clause

-- =	Equal	
-- >	Greater than	
-- <	Less than	
-- >=	Greater than or equal	
-- <=	Less than or equal	
-- <>	Not equal. Note: In some versions of SQL this operator may be written as !=	
-- BETWEEN	Between a certain range	
-- LIKE	Search for a pattern	
-- IN	To specify multiple possible values for a column
-- The OR operator displays a record if any of the conditions are TRUE.
-- The AND operator displays a record if all the conditions are TRUE.
-- The NOT operator is used in combination with other operators to give the opposite result, also called the negative result.

select *
from Users
where FirstName = "Charlie";

select *
from Users
where FirstName != "Charlie";

select *
from Products
where Price < 200;

select *
from OrderDetails
where Quantity >=2;

select  UserId, Firstname, LastName
from Users
where Lastname like "D%"; -- Search for a pattern


select OrderId, ProductId
from OrderDetails
where Quantity between 0 and 3; -- Between a certain range
 
select *
from Orders
where OrderId in (1,2); -- To specify multiple possible values for a column

select *
from Orders
where OrderId = 1 and 2;
 
select *
from Users
where not Firstname = "Alice";

select *
from Users
where Email is null;

select * 
from Users
where FirstName is not null;



