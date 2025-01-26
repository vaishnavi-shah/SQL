-- String functions
-- built in function that help us work with strings

select length("Vaishnavi");  -- length or number of characters in the string

select first_name , length(first_name)
from employee_demographics
order by 2;

select upper('vaishnavi'); -- returns string in upper case
select lower("VAISHNAVI"); -- return string in lower case

select first_name , upper(first_name)
from employee_demographics;

select first_name , lower(first_name)
from employee_demographics;

-- trim , lefttrim  : ltrim , righttrim : rtrim

select trim("       vaishnavi        ");
select ltrim("      vaishnavi  shah        ");
select rtrim("    vaishnavi    ");


-- substring

select first_name , left(first_name, 4) as left_sub
from employee_demographics;

select first_name, right(first_name ,3) as right_sub
from employee_demographics;

select first_name,
left(first_name, 4) as left_substring,
right(first_name, 3) as right_substring,
substring(first_name,3, 2) as sub_string,
substring(birth_date,6,2) as birth_month
from employee_demographics;

-- replace : will replace specific character with different character 

select first_name,
replace(first_name,'a','v') as replaced_char
from employee_demographics;

-- locate : returns the number of times a character has appeared in the string

select locate('a',"Vaishnavi");

select first_name,
locate("a",first_name) as locating_a
from employee_demographics;

-- concatenation : combines two columns

select first_name , last_name, 
concat(first_name," ", last_name) as full_name
from employee_demographics;


