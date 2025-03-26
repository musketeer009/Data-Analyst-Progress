
# VIEW IN WINDOW FUNCTION
use swiggy;
select * from restaurants;

#1 create view
create view view1 as (select name, city, rating, rating_count as 'order',
 cuisine cost, cost* rating_count as 'revenue' from restaurants);
select * from view1;

#2 create a view for end_user
drop view if exists end_user;
create view end_user as (select name, city,cuisine, rating, rating_count as 'orders', cost from restaurants);
select * from end_user;

#3 create a view for sweet dishes
drop view if exists sweet_dishes ;
create view sweet_dishes as (select name, city,cuisine, rating, rating_count as 'orders', cost 
from restaurants where cuisine in ('sweets','desserts', 'Ice cream', 'ice cream cake', 'waffle'));

select distinct cuisine from restaurants;
select * from sweet_dishes;


#4 create a view of top 100 restaurants
create view top_100 as (select *,cost*rating_count as 'revenue' from restaurants order by cost*rating_count desc limit 100) ;
select * from top_100;


#5 create a view of restaurants atleast 100 people visited
create view visit as (select * from restaurants where rating_count >=100 order by rating_count desc) ;
select * from visit;

create view atleast as (select * from restaurants order by rating_count limit 100) ;
select count(*) from atleast;
select * from atleast;

#6 create a view of top 1000 most expensive restaurants 
create view most_expensive as (select * from restaurants order by cost desc limit 1000) ;
select * from most_expensive;


#7  create a view for the top rataed restaurants in each city
create view top_rest as (select * from (select *, row_number() over(partition by city order by rating*rating_count desc) as 'row_rank' 
from restaurants) as T1 where T1.row_rank =1);
select * from top_rest;
select count(distinct city) from top_rest;  

#8 create a view for restaurants with high revenue margins;
create view margin as (select * from restaurants);