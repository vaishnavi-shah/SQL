-- practice of joins 
-- joins are of two types : inner and outer 
-- inner join : returns all the matching values from both the tables 
-- outer is divided into three parts : left , right , full

-- left outer join : return all records from left table and the matching values
-- right outer join : return all the records from right table and the matching values
-- full outer join : return all the records from both the tables and the matching values 

-- database name : parks_and_recreation
-- table 1 : employee_demographics
-- table 2 : employee_salary

select *
from parks_and_recreation.employee_demographics;

select * 
from parks_and_recreation.employee_salary;

select *
from parks_and_recreation.employee_demographics as dem 
inner join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
select dem.employee_id , sal.first_name, dem.age , sal.occupation
from parks_and_recreation.employee_demographics as dem 
left join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id;

select dem.employee_id , sal.first_name, dem.age , sal.occupation
from parks_and_recreation.employee_demographics as dem 
right join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id;

