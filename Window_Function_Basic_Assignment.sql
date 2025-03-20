

-- 1. Create new column containing average rating of restaurants throught the dataset
select *, round(avg(rating) over(),2) as 'avg_rating' from restaurants;

-- 2. Create new column containing average rating_count of restaurants throught the dataset
select *, round(avg(rating_count) over()) as 'avg_rating' from restaurants;

-- 3. Create new column containing average cost of restaurants throught the dataset
select *, round(avg(cost) over(),2) as 'avg_cost' from restaurants;

-- 4. Create columns containing average, min, max of cost,rating,rating_count of restaurants throught the dataset
select *,
round(avg(cost) over(),2) as 'avg_cost',
min(cost) over() as 'mincost',
max(cost) over() as 'maxcost',

round(avg(rating) over(),2) as 'avg_rating',
min(rating) over() as 'minrating',
max(rating) over() as 'maxrating',

round(avg(rating_count) over()) as 'avg_rating_count',
min(rating_count) over() as 'minrating_count',
max(rating_count) over() as 'maxrating_count'
from restaurants;

-- 5. Create column containing average cost of the city where that specific restaurant is from
select *, round(avg(cost) over(Partition by city),2) as 'avg_cost' from restaurants; 

-- 6. Create column containing average cost of the cuisine which that specific restaurant is serving
select *, round(avg(cost) over(Partition by cuisine),2) as 'avg_cost' from restaurants; 
select distinct cuisine from restaurants;

-- 7. Create both column together
select *, 
round(avg(cost) over(Partition by city),2) as 'avg_cost_city', 
round(avg(cost) over(Partition by cuisine),2) as 'avg_cost_cuisine' from restaurants; 

-- 8. List the restaurants whose cost is more than the average cost of the restaurants?
select avg(cost) from restaurants;
select * from restaurants where cost >(select avg(cost) from restaurants) ;

select * from (select *, round(avg(cost) over(),2) as 'avg_cost' from  restaurants) as T1 where T1.cost> T1.avg_cost;

-- 9. List the restaurants whose cuisine cost is more than the average cost?
 select * from (Select *, round(avg(cost) over(Partition by cuisine),2) as 'avg_cost' from restaurants) as T1 where T1.cost> T1.avg_cost;
 
 