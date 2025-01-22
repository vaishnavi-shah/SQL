select * from parks_and_recreation.employee_demographics;
select * from parks_and_recreation.employee_salary;

select first_name from parks_and_recreation.employee_demographics;

select first_name,
age,
age+10
from parks_and_recreation.employee_demographics;

#PEMDAS - parantheses , exponential , multiplication , division , addition and subtraction
# above is the mode of operation in mysql 
# example: 

select 
first_name, 
age ,
(age+10)*10-10
from parks_and_recreation.employee_demographics;

# Distinct helps you to select unique values from the column

#Example:
# case 1:
select distinct gender
from parks_and_recreation.employee_demographics;

#case 2:
select distinct first_name
from parks_and_recreation.employee_demographics;

#case 3:
select distinct first_name, gender 
from parks_and_recreation.employee_demographics;


