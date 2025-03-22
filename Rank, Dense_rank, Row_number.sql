
-- rank(): assigns ranks but skips values if there's a tie.
-- dense_rank(): assigns ranks without skipping values in case of a tie.
-- row_number(): assigns a unique row number even if there are ties.

select name, rating, rank() over (order by rating desc) as rank_position 
from restaurants;

select name, city, rating, rank() over (partition by city order by rating desc) as rank_position 
from restaurants;

select name, total_reviews, rank() over (order by total_reviews desc) as rank_position 
from restaurants;

select name, avg_cost, rank() over (order by avg_cost asc) as rank_position 
from restaurants;

select name, city, avg_cost, rank() over (partition by city order by avg_cost desc) as cost_rank
from restaurants;

select name, rating, rank() over (order by rating desc) as rating_rank
from restaurants;

select name, cuisine, rating, rank() over (partition by cuisine order by rating desc) as rank_position
from restaurants;

select name, rating, dense_rank() over (order by rating desc) as dense_rank_position 
from restaurants;

select name, city, rating, dense_rank() over (partition by city order by rating desc) as dense_rank_position
from restaurants;

select name, total_reviews, dense_rank() over (order by total_reviews desc) as review_rank
from restaurants;

select name, city, avg_cost, dense_rank() over (partition by city order by avg_cost asc) as cost_rank
from restaurants;

select name, cuisine, rating, dense_rank() over (partition by cuisine order by rating desc) as cuisine_rank
from restaurants;

select name, rating, dense_rank() over (order by rating desc) as rating_rank
from restaurants;

select name, cuisine, avg_cost, dense_rank() over (partition by cuisine order by avg_cost asc) as cost_rank
from restaurants;

select name, rating, row_number() over (order by rating desc) as row_num
from restaurants;

select name, city, rating, row_number() over (partition by city order by rating desc) as row_num
from restaurants;

select name, city, rating from (select name, city, rating, 
row_number() over (partition by city order by rating desc) as row_num
from restaurants) ranked
where row_num = 1;

select name, cuisine, total_reviews from (select name, cuisine, total_reviews, 
row_number() over (partition by cuisine order by total_reviews desc) as row_num
from restaurants) ranked
where row_num = 1;

select name, city, avg_cost from (select name, city, avg_cost, 
row_number() over (partition by city order by avg_cost desc) as row_num
from restaurants) ranked
where row_num = 1;

select name, cuisine, rating from (select name, cuisine, rating, 
row_number() over (partition by cuisine order by rating desc) as row_num
from restaurants) ranked
where row_num = 2;


