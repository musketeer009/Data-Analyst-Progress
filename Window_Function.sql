
-- (expression) OVER (
   --  PARTITION BY column_name 
  --   ORDER BY column_name)

# PARTITION BY: Divides the result set into subgroups (similar to GROUP BY, but works on that subgroup without aggregating).
# ORDER BY: Defines the order of rows within each partition.
# OVER(): key word of window function.


select name, city, cost, min(cost) over (partition by city) as min_cost_in_city from restaurants;

select name, city, cost, max(cost) over (partition by city) as max_cost_in_city from restaurants;

select name, city, cost, 
cost - avg(cost) over (partition by city) as cost_difference from restaurants;

select name, count(*) over () as total_restaurants from restaurants;

select name, city, cost, rank() over (partition by city order by cost desc) as cost_rank from restaurants;

select name, cost, 
cost * 100.0 / sum(cost) over () as cost_percentage from restaurants;

