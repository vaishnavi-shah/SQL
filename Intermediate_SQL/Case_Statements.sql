-- case statements

select first_name , last_name, age,
case
	when age >= 40 then "Old" 
end
from employee_demographics;

select first_name, last_name, salary,
concat(first_name," ",last_name) as full_name,
case 
	when salary >= 45000 then "Paid Well"
end
from employee_salary;


-- multiple when can be used 

select first_name , last_name , age ,
case 
	 when age > 40 then "Old"
     when age between 31 and 40 then "Mid"
     when age between 21 and 30 then "Young"
end  as status_by_age
from employee_demographics;

-- salary increment and bonus
-- 50000 < 5%
-- 50000 > 7%
-- finance dept : Bonus of 10%

select concat(first_name," ",last_name) as full_name, salary,
case
	when salary < 50000 then salary * 1.05
    when salary > 50000 then salary * 1.07
end as new_salary,
case
	when dept_id = 6 then salary * .10
end as bonus
from employee_salary;






     
     
