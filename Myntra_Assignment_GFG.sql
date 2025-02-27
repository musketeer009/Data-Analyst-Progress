
select * from myntra ;

select count(*) from myntra;

select count(DISTINCT(product_tag)) from myntra;

select count(distinct(product_link)) from myntra where brand_name = 'HRX by Hritik Roshan';

select * from myntra where rating_count>1000 order by rating_count desc;

# 1.best rated wallet with 4.5 rating and rating_count 100
select * from myntra where rating >4.5 and 
product_tag = 'wallets' and rating_count>100 
order by rating_count desc;

# 2.best rated tshirts from nike/adidas  with more 4 rating and rating_count 100 price 2000-3000
select * from myntra 
where product_tag='tshirts' and
brand_name in ('Nike', 'Adidas') and 
rating > 4 and
rating_count>50 and
(discounted_price BETWEEN 2000 and 3000)
order by discounted_price desc;


# 3. least expensive product on myntra
select * from myntra order by discounted_price  limit 1;

select min(discounted_price) from myntra  ;
select * from myntra where discounted_price= 49;


# 4. top 5 most expensive product on myntra
select * from myntra order by discounted_price desc limit 10;

select * from myntra order by discounted_price desc limit 5,3;


# 5. top 5 product based on best rating
select * from myntra order by rating* rating_count  desc limit 5 ;


# 6. finding the second most expensive product
select * from myntra order by discounted_price desc limit 1,1;


# 7. finding the second least expensive product
select * from myntra order by discounted_price ;

select * from myntra order by discounted_price limit 1,1;


# 8. finding the worst rated  product by nike
select *, round(rating*rating_count,0) as 'rating_filter'  from myntra 
where brand_name ='Nike' 
order by rating_filter  asc ;

# 9. finding worst product by nike & rating is not zero
select * from myntra where brand_name ='Nike' and rating!=0 
order by rating*rating_count limit 1;

#10. top 10 best rated tshirts from nike or adidas 
select * from myntra where brand_name='Nike' or brand_name='Adidas'
order by rating*rating_count desc ;

select * from myntra where ( brand_name='nike' or brand_name='adidas' ) and 
product_tag = 'tshirts' order by rating*rating_count desc limit 10;

select * from myntra where  brand_name in ('nike', 'adidas' ) and 
product_tag = 'tshirts' order by rating*rating_count desc limit 10;


#11. worst rated 10 products based on rating of 100 people atleast
select * from myntra where rating_count>=100 order by rating*rating_count limit 10;


#12. 10 worst rated tshirts based on rating of 100 people atleast
select * from myntra  where product_tag= 'tshirts' and rating_count>=100 
order by rating*rating_count limit 10 ;


#13. sort the products in alphabetical descending order based on their product_name and show the last 10 of them
select * from myntra order by product_name desc limit 10;


#14. top 10 best rated tshirts from nike or adidas 
select * from myntra where  product_tag ='tshirts' and 
(brand_name= 'nike' or brand_name = 'adidas') 
order by rating* rating_count  desc limit 10;


#15. list of tshirts from nike and adidas price between 1000 and 1200
select * from myntra where (brand_name = 'nike' or brand_name= 'adidas') and 
product_tag = 'tshirts' and  discounted_price BETWEEN 1000 and 1200 
order by  product_name , discounted_price ;

select * from myntra where brand_name in ( 'nike', 'adidas') and 
product_tag = 'tshirts' and  discounted_price BETWEEN 1000 and 1200 
order by  product_name , discounted_price ;