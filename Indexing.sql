
select * from practicetable;

# Simple Index
drop index ind_city on practicetable;
create index ind_city on practicetable(city);

select * from practicetable where age between 25 and 40; 

select * from practicetable where city = "mumbai"; 
select * from practicetable where city = "kolkata"; 

# Composite Index
drop index ind_city on practicetable;

create index ind_city on practicetable(city, gender);

select * from practicetable where age between 25 and 40; 

# Unique Index
drop index ind_city on practicetable;

create unique index ind_city on practicetable(email);
select * from practicetable where city= "kolkata"; 
select * from practicetable where email = "ritu@example.com"; 

# Full-Text-Index
drop index ind_city on practicetable;
create fulltext index ind_city on practicetable(name, email);
select  name, city, cost from practicetable where match(name, email) against("Rajesh");
select  name, city, cost from practicetable where match(name, email) against("rajesh");
select  name, city, cost from practicetable where match(name, email) against("gupta");
select  name, city, cost from practicetable where match(name, email) against(null);

select  name, city, cost from practicetable where match(name, email) against("patel");

# we want first text but not other/ patel is there but not rajesh
select  name, city, cost from practicetable where match(name, email_name) against("-Rajesh +patel" in boolean mode);


select *, match(name, email) against('rajesh') as score
from practicetable
where match(name, email) against('rajesh');

select *, match(name, email) against('patel') as score
from practicetable
where match(name, email) against('patel');

select *, match(name, email) against('ritu') as score
from practicetable
where match(name, email) against('ritu');

# both words must be present using boolean mode
select *, match(name, email) against('rajesh +patel' in boolean mode) as relevance
from practicetable
where match(name, email) against('rajesh +patel' in boolean mode);

# to know which index is used by sql engine
explain select *, match(name, email) against('rajesh +patel' in boolean mode) as relevance
from practicetable
where match(name, email) against('rajesh +patel' in boolean mode);
