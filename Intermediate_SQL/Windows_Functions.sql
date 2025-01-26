-- windows functions

select gender , avg(salary) as avg_salary
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender;


select dem.first_name, dem.last_name, gender, salary, sum(salary) over(partition by gender order by dem.employee_id) as rolling_total
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id;


select dem.employee_id, dem.first_name, dem.last_name, gender, salary, 
row_number() over(partition by gender order by salary desc) as row_num,  -- unique 
rank() over(partition by gender order by salary desc) as rank_num,       -- duplicates based on ranks but follows positional sequence
dense_rank() over(partition by gender order by salary desc) as dense_rank_num  -- duplicates but follows numerical sequence 
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
