-- Order By 
# helps in sorting in ascending and descending order 

select *
from parks_and_recreation.employee_demographics
order by first_name asc;

select *
from parks_and_recreation.employee_demographics
order by age desc;

select *
from parks_and_recreation.employee_demographics
order by gender , age desc; 

select * 
from parks_and_recreation.employee_demographics
order by age, gender;

select * 
from parks_and_recreation.employee_demographics
order by 5 , 4; # you can put the column number instead of column name 


