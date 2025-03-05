
select * from myntra;

# total revenue of brands with revenue greater than 500000

select brand_name, sum(revenue) as total_revenue
from myntra
group by brand_name
having sum(revenue) > 500000
order by total_revenue desc;

# average rating by brands with average rating greater than 4

select brand_name, avg(rating) as avg_rating
from myntra
group by brand_name
having avg(rating) > 4
order by avg_rating desc;

# count of products by each brand with more than 20 products

select brand_name, count(*) as product_count
from myntra
group by brand_name
having count(*) > 20
order by product_count desc;

# brands with maximum discount greater than 50%
select brand_name, max((marked_price - discounted_price) * 100 / marked_price) as max_discount
from myntra
group by brand_name
having max((marked_price - discounted_price) * 100 / marked_price) > 50
order by max_discount desc;

# brands with total rating count greater than 10000

select brand_name, sum(rating_count) as total_rating_count
from myntra
group by brand_name
having sum(rating_count) > 10000
order by total_rating_count desc;

# average discounted price by brand having average greater than 2000

select brand_name, avg(discounted_price) as avg_discounted_price
from myntra
group by brand_name
having avg(discounted_price) > 2000
order by avg_discounted_price desc;

# total revenue by ratings with revenue greater than 300000

select rating, sum(revenue) as total_revenue
from myntra
group by rating
having sum(revenue) > 300000
order by total_revenue desc;

# brands with minimum discounted price less than 500

select brand_name, min(discounted_price) as min_discounted_price
from myntra
group by brand_name
having min(discounted_price) < 500
order by min_discounted_price;

# brands with average revenue greater than 50000

select brand_name, avg(revenue) as avg_revenue
from myntra
group by brand_name
having avg(revenue) > 50000
order by avg_revenue desc;

# brands with more than 5 products and average rating above 4.5

select brand_name, count(*) as total_products, avg(rating) as avg_rating
from myntra
group by brand_name
having count(*) > 5 and avg(rating) > 4.5
order by avg_rating desc;

# find brands where total discount value is greater than 100000
select brand_name, sum(marked_price - discounted_price) as total_discount
from myntra
group by brand_name
having sum(marked_price - discounted_price) > 100000
order by total_discount desc;

# count of high-rated products where rating > 4 per brand

select brand_name, count(*) as high_rated_products
from myntra
where rating > 4
group by brand_name
having count(*) > 10
order by high_rated_products desc;

# brands with maximum revenue greater than 100000

select brand_name, max(revenue) as max_revenue
from myntra
group by brand_name
having max(revenue) > 100000
order by max_revenue desc;

# find brands where the average discount percentage is above 30%

select brand_name, avg((marked_price - discounted_price) * 100 / marked_price) as avg_discount_percent
from myntra
group by brand_name
having avg((marked_price - discounted_price) * 100 / marked_price) > 30
order by avg_discount_percent desc;

# brands with total revenue greater than 1,00,000 and more than 50 products

select brand_name, sum(revenue) as total_revenue, count(*) as product_count
from myntra
group by brand_name
having sum(revenue) > 100000 and count(*) > 50
order by total_revenue desc;

