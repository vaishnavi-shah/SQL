-- subqueries

select *
from employee_demographics
where employee_id in 
                   (select employee_id
                   from employee_salary
                   where dept_id = 1)
;

select gender , avg(age), min(age), max(age), count(age)
from employee_demographics
group by gender;

select avg(max_age)
from (select gender , avg(age) as avg_age, min(age) as min_age, max(age) as max_age, count(age) as total_age
from employee_demographics
group by gender) as agg_table;
