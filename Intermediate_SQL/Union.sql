-- Unions  : Syntax
-- SELECT column_name(s) FROM table1
-- UNION
-- SELECT column_name(s) FROM table2;

select first_name , last_name , birth_date
from employee_demographics
union 
select salary, occupation , dept_id
from employee_salary;


select first_name , last_name 
from employee_demographics
union                             -- by default it is union distinct 
select first_name , last_name
from employee_salary;

select first_name , last_name 
from employee_demographics
union distinct                    -- return only unique firts_name and last_name avoiding duplication
select first_name , last_name
from employee_salary;

select first_name , last_name 
from employee_demographics
union all                          -- include duplicate record
select first_name , last_name
from employee_salary;