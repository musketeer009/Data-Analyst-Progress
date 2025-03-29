use swiggy;
select * from restaurants;

# create a new table 'sirsa_restaurants' containing restaurants of sirsa only

create table if not exists sirsa_restaurants as
select * from restaurants where city = 'sirsa';
select * from  sirsa_restaurants;

# create a new table 'city_statistics' containing aggregate statistics for each city

create table if not exists city_statistics as
select city, round(avg(cost),0) as 'avg_cost', count(city) as 'no of city', round(avg(rating),1) as 'avg_rating'  
from restaurants group by city order by avg_rating desc;
select * from  city_statistics;

#create a new table expense_restaurants  containing restaurants with cost greater than 500

create table if not exists expense_restaurants as
select * from restaurants where cost >500;
select * from expense_restaurants ;

# create a new table avg_rating_restaurants  containing restaurants with greater than avgrating 

create table if not exists avg_rating_restaurants as
select * from restaurants where rating >(select avg(rating) from restaurants) ;
select * from avg_rating_restaurants ;
