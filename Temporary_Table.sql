
use swiggy;

# create a temporary table
create temporary table temp_noida_restaurants as 
select * from restaurants as rest where city = 'noida';
select * from temp_noida_restaurants;

# drop any temporary table
drop table if exists temp_noida_restaurants;

# create a new temporary table Pune_restaurants containing restaurants of Pune only

create temporary table if not exists temp_pune_restaurants as
select rest.* from restaurants as rest where city = 'pune';
select * from  temp_pune_restaurants;

# create a new  trmporary table 'city_statistics' containing aggregate statistics for each city
drop table city_statistics;
create temporary table if not exists city_statistics as
select city, round(avg(cost),0) as 'avg_cost', count(city) as 'no of city' from restaurants group by city order by city desc;
select * from  city_statistics;

create table if not exists city_statistics as
select city, round(avg(cost),0) as 'avg_cost', count(city) as 'no of city', round(avg(rating),1) as 'avg_rating'  
from restaurants group by city order by avg_rating desc;
select * from  city_statistics;

#create a new  temporary table temp_expense_restaurants  containing restaurants with cost greater than 700

create temporary table if not exists temp_expense_restaurants as
select * from restaurants where cost >700;
select * from temp_expense_restaurants ;

-- name of temporary table can be name of existing table also not require that name should be unique
-- but calling p hmesa temporary file show krega
-- drop krn p pehle emporary table delete hogaa