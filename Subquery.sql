
select *
from myntra
where (marked_price - discounted_price) = (
    select max(marked_price - discounted_price)
    from myntra);


select *
from myntra
where revenue > (
    select avg(revenue)
    from myntra);


select *
from myntra
where brand_name = (
    select brand_name
    from myntra
    order by rating asc
    limit 1);


select *
from myntra as m
where (marked_price - discounted_price) > (
    select avg(marked_price - discounted_price)
    from myntra
    where brand_name = m.brand_name);


select brand_name
from (
    select brand_name, sum(rating_count) as total_ratings
    from myntra
    group by brand_name
    order by total_ratings desc
    limit 3) as top_brands;


select *
from myntra
where rating = (
    select max(rating)
    from myntra);


select brand_name
from myntra
where brand_name in (
    select brand_name
    from myntra
    group by brand_name
    having count(*) > 10);


select *
from myntra
where rating > any (
    select rating
    from myntra);


select *
from myntra
where revenue < all (
    select revenue
    from myntra);


select *
from myntra as m
where revenue > (
    select avg(revenue)
    from myntra
    where brand_name = m.brand_name);


select *
from myntra as m
where rating = (
    select max(rating)
    from myntra
    where brand_name = m.brand_name);


select *
from myntra
where discounted_price = (
    select max(discounted_price)
    from myntra);


select brand_name
from myntra
group by brand_name
having sum(revenue) > 1000000;

select *
from myntra as m
where discounted_price < (
    select avg(discounted_price)
    from myntra
    where brand_name = m.brand_name);


select product_name, brand_name, count(*)
from myntra
group by product_name, brand_name
having count(*) > 1;

select *
from myntra
where brand_name not in (
    select brand_name
    from myntra
    group by brand_name
    order by sum(rating_count) desc
    limit 5);


select *
from myntra
where (marked_price - discounted_price) / marked_price * 100 > 30;

select *
from myntra
where revenue >= (
    select max(revenue) * 0.9
    from myntra);


select *
from myntra as m
where rating > (
    select avg(rating)
    from myntra
    where brand_name = m.brand_name);

