use practice;

select *  from myntra;
select count(*)  from myntra;

#FILTERS

select * from myntra where brand_name like 's%';

select * from myntra where brand_name like '%s';

select * from myntra where brand_name like '%da%';

select * from myntra where brand_name like '______';

select * from myntra where brand_name like '%ik%';

select * from myntra where brand_name like 'A%s';

select * from myntra where brand_name like '_s_c%';

select * from myntra  where brand_name like '__c%';

select * from myntra  where brand_name like '_a_i%';

select * from myntra  where brand_name like '%n%';

#ALIAS

select brand_name,
sum(rating_count) as product_sold,
min(marked_price) as min_price,
avg(marked_price) as avg_price,
max(marked_price) as max_price
from myntra group by brand_name;

#USING AND OPERATOR

select product_name, brand_name, marked_price, discounted_price from myntra where  discounted_price>5000 and discounted_price<8000;
select product_name, brand_name, marked_price, discounted_price from myntra where  discounted_price BETWEEN 5000 and 8000;

select product_name, brand_name, marked_price, discounted_price from myntra 
where ( discounted_price BETWEEN 3000 and 8000) AND brand_tag= 'Adidas'and rating>4;

select product_name, brand_name, marked_price,rating, rating_count, discounted_price from myntra 
where ( discounted_price BETWEEN 3000 and 8000) AND 
brand_tag= 'Adidas'and 
rating>4 AND 
rating_COUNT>10;

#USING AND, OR OPERATOR 

select product_name, product_name, BRANd_TAG, discounted_price from myntra 
where  (brand_tag= 'Adidas' or brand_tag= 'puma') and (discounted_price BETWEEN 3000 and 5000) ;

select product_name, product_name, BRAND_TAG, discounted_price from myntra 
where  not(brand_tag= 'Adidas' or brand_tag= 'puma') and (discounted_price BETWEEN 3000 and 5000) ;

select product_name, product_name, BRAND_TAG, discounted_price from myntra 
where  brand_tag IN  ('Adidas', 'puma') and (discounted_price BETWEEN 3000 and 5000) ;

select product_name, product_name, BRAND_TAG, discounted_price from myntra 
where  brand_tag NOT IN  ('Adidas', 'puma') and (discounted_price BETWEEN 3000 and 5000) ;



select distinct * from myntra 
where brand_tag = 'adidas' and discounted_price > 3000 and discounted_price < 5000; 

select * from myntra 
where brand_tag = 'adidas' and discounted_price > 5000 and discounted_price < 7000;

select count(*) from myntra 
where brand_tag = 'adidas' and discounted_price > 3000 and discounted_price < 5000;

select brand_tag, product_name, discounted_price from myntra 
where brand_tag = 'nike' and discounted_price > 2000 and discounted_price < 4000;

select brand_tag, product_name, discounted_price from myntra 
where brand_tag = 'cosco' and discounted_price > 1000 and discounted_price < 1500;

select brand_tag, product_name, discounted_price from myntra 
where brand_tag = 'only' and discounted_price > 1000 and discounted_price < 2000;

select * from myntra 
where brand_tag = 'H&M' and discounted_price > 1000 and discounted_price < 5000;

select * from myntra 
where brand_tag = 'Shoetopia' and discounted_price < 5000 and rating_count > 500;

select * from myntra 
where brand_tag = 'Roadster' and discounted_price < 5000 and rating_count > 200;

select * from myntra 
where brand_tag = 'Roadster' and discounted_price < 2000 and rating_count > 100;

select * from myntra 
where brand_tag = 'Van Heusen Sport' and discounted_price < 5000 and rating_count > 100;

select * from myntra 
where brand_tag = 'Van Heusen Sport' and discounted_price < 3000 and rating_count > 200;

select brand_name, product_name, revenue from myntra 
where brand_tag = 'Van Heusen Sport' and discounted_price < 5000 and rating_count > 100;

select brand_name, product_name, revenue from myntra 
where brand_tag like "a%s" and discounted_price < 5000 and rating_count > 100;

select brand_name, product_name, revenue from myntra 
where brand_tag like "N___" and discounted_price < 5000 and rating_count > 100;

select brand_name, product_name, revenue from myntra 
where brand_tag like "a%s" and discounted_price < 5000 and rating_count > 100;

select * from myntra 
where brand_tag like "a%s" and (discounted_price between 5000 and  6000) or rating_count > 100;

select * from myntra 
where brand_tag like "c_s_o" and (discounted_price between 3000 and  6000) or rating_count > 200;






