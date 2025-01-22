-- Group By
# helps to roll up the columns and perform aggregrate operations
select gender , avg (age)
from parks_and_recreation.employee_demographics 
group by gender;

select occupation ,avg (salary)
from parks_and_recreation.employee_salary
group by occupation;

select first_name ,last_name, max(salary)
from parks_and_recreation.employee_salary
group by first_name , last_name ;

select gender , avg (age) , max(age), min(age) , count(age)
from parks_and_recreation.employee_demographics 
group by gender;

