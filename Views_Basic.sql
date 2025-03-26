
# 1. view for all restaurant details
create view all_restaurants as
select * from restaurants;

# 2. view for restaurants with a rating above 4
create view high_rated_restaurants as
select * from restaurants
where rating > 4;

# 3. view for restaurants located in a specific city 
create view restaurants_in_newyork as
select * from restaurants
where city = 'noida';

# 4. view for restaurants serving a specific cuisine
create view italian_restaurants as
select * from restaurants
where cuisine = 'italian';

# 5. view for restaurants with delivery service
create view restaurants_sweet as
select * from restaurants
where cuisine = 'sweet';

# 6. view for budget-friendly restaurants 
create view budget_friendly_restaurants as
select * from restaurants
where avg_cost < 200;

# 7. view for restaurant names and their ratings
create view restaurant_names_ratings as
select name, rating from restaurants;

# 8. view for top 5 highest-rated restaurants
create view top_5_restaurants as
select * from restaurants
order by rating desc
limit 5;

# 9. view for non-vegetarian-only restaurants
create view non_vegetarian_restaurants as
select * from restaurants
where cuisine = 'non-veg';

# 10. view for vegetarian-only restaurants
create view vegetarian_restaurants as
select * from restaurants
where cuisine = 'veg';
