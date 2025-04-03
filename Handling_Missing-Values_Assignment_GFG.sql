
select * from practicetable;

# Find rows with missing values in any column

select * from practicetable where name is NULL or age = null or gender is null 
or email is null or phone_number is null or city is null 
or state is null or cost is null or date is null;


# Find rows without missing values

select * from practicetable where name is  not NULL and age is not null and gender is not null 
and email is not null and phone_number is not null and city is not null 
and state is not null and cost is not null and date is not null;

SELECT * 
FROM practicetable 
WHERE NOT (
    name IS NULL OR age IS NULL OR gender IS NULL OR 
    email IS NULL OR phone_number IS NULL OR city IS NULL OR 
    state IS NULL OR cost IS NULL OR date IS NULL
);

# Saving table without null values
create temporary table notnullvalues as (SELECT * 
FROM practicetable 
WHERE NOT (
    name IS NULL OR age IS NULL OR gender IS NULL OR 
    email IS NULL OR phone_number IS NULL OR city IS NULL OR 
    state IS NULL OR cost IS NULL OR date IS NULL
)
);
drop table notnullvalues;
select * from notnullvalues;

create table notnullvalues as (SELECT * 
FROM practicetable 
WHERE NOT (
    name IS NULL OR age IS NULL OR gender IS NULL OR 
    email IS NULL OR phone_number IS NULL OR city IS NULL OR 
    state IS NULL OR cost IS NULL OR date IS NULL
)
);
select * from notnullvalues;

# Filling missing age all with specific values

update practicetable set age = coalesce(age,0);
select * from practicetable;

# Filling nulls with specific values

update practicetable set
name = coalesce(name, "unknown"),
gender = coalesce(gender,"unknown"),
email= coalesce(email,"unknown"),
phone_number = coalesce(phone_number,"unknown"),
city = coalesce(city,"unknown"),
state = coalesce(state,"unknown"),
cost = coalesce(cost,0.0),
date = coalesce(date,"3333-12-31");

select * from practicetable;

# Filling null amount with average amount values
select * from practicetable where cost = 0;

update practicetable set cost = (select avg_cost from (select avg(cost) as "avg_cost" from practicetable) as avg_table)
where cost = 0;
select * from practicetable;
    
# Filling null city with most frequent city

update practicetable set city = (select frequent_city from (select city as "frequent_city", count(city) as "no" from practicetable group by city order by no desc limit 1) 
as city_group)  where city = "3";
select * from practicetable;