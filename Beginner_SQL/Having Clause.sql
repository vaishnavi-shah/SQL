-- Having VS Where clause

select gender , avg (age)
from parks_and_recreation.employee_demographics
where avg(age) >40
group by gender;

select gender , avg (age)
from parks_and_recreation.employee_demographics
group by gender
having avg(age) >40; # after group by we can filter based on aggregration

select occupation, avg(salary)
from parks_and_recreation.employee_salary
where occupation = "%manager%"
group by occupation
having avg(salary)> 75000;

