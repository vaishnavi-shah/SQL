-- Joins

select *
from parks_and_recreation.employee_demographics;

select * 
from parks_and_recreation.employee_salary;

-- inner joins return rows that are same in both columns of the both table
-- by default JOIN represents INNER JOIN

select *
from parks_and_recreation.employee_demographics as dem
inner join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
select dem.employee_id , sal.first_name, dem.age , sal.occupation
from parks_and_recreation.employee_demographics as dem
inner join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id;

-- after using inner joins you have specify which column to pull from which table 

-- LEFT JOIN

select *
from parks_and_recreation.employee_demographics as dem  # employee_demographics : left table 
left join parks_and_recreation.employee_salary as sal   # employee_salary : right table 
	on dem.employee_id = sal.employee_id;
    
select *
from parks_and_recreation.employee_demographics as dem  # employee_demographics : left table 
right join parks_and_recreation.employee_salary as sal   # employee_salary : right table 
	on dem.employee_id = sal.employee_id;


-- self join
select emp1.first_name, emp2.gender
from parks_and_recreation.employee_demographics emp1
join parks_and_recreation.employee_demographics emp2
	on emp1.employee_id = emp2.employee_id;

-- joining multiple tables together

select *
from parks_and_recreation.employee_demographics as dem
inner join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id
inner join parks_and_recreation.parks_departments as dept
	on dept.department_id = sal.dept_id;

select * 
from parks_and_recreation.parks_departments;





