-- WHERE Clause

select * 
from parks_and_recreation.employee_demographics
where first_name="Leslie";

select * 
from parks_and_recreation.employee_salary
where salary >=50000;

select * 
from parks_and_recreation.employee_salary
where salary <=50000;

select *
from parks_and_recreation.employee_demographics
where gender != "Female";

select first_name , last_name , age
from parks_and_recreation.employee_demographics
where age >=30;

select first_name, last_name
from parks_and_recreation.employee_demographics
where birth_date >= "1985-01-01";

-- AND OR NOT - Logical Operators
select first_name,last_name
from parks_and_recreation.employee_demographics
where birth_date >= "1985-01-01"
and gender = "Male"; # both should be true

select first_name
from parks_and_recreation.employee_demographics
where gender = "Male"
or age >= 30; # either of the one condition should be true 

select *
from parks_and_recreation.employee_demographics
where age > 40 
or not gender = "Female";

select * 
from parks_and_recreation.employee_demographics
where (first_name="Leslie" and age = 44) or age >= 50;

-- LIKE statement
-- % (any value) , _ (particular value)

select *
from parks_and_recreation.employee_demographics
where first_name like "Jer%";

select *
from parks_and_recreation.employee_demographics
where first_name like "%e%";

select *
from parks_and_recreation.employee_demographics
where first_name like "a__"; # 2 underscores = 2 characters

select *
from parks_and_recreation.employee_demographics
where first_name like "a__%";