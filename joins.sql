-- joins
-- inner join : combines table based on the matching parameters
-- left join : return all the records from left table and the matching values from both the tables
-- right join : return all the records from table and the matching values from both the tables
-- full outer join : return all the records as well as matching values from both the tables 

select *
from store 
inner join customers
	on store.store_id = customers.store_id;
    
select * 
from store 
left join customers
	on store.store_id = customers.store_id;
    
select * 
from store 
right join customers
	on store.store_id = customers.store_id;
    
select * 
from store 
full join customers
	 on store.store_id = customers.store_id; 