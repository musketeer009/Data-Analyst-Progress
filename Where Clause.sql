select * from inventory;

select product_namwe as product_name from inventory;

select product_id ,product_namwe ,quantity from inventory where marked_price>1500;

select * from inventory where marked_price>4000;

select * from inventory where size = 20;

select * from inventory where  marked_price<=2000;

select * from inventory where marked_price >1000;

select * from inventory where product_namwe in ('shirt', 'pant');

select * from inventory where product_name in ('tshirt', 'pant');

select * from inventory limit 3 offset 2;

select * from inventory limit 5 offset 10;

select * from inventory where product_name in ('tshirt', 'jeans');

select count(distinct(product_name)) as total_brand from inventory;

select product_name, quantity from inventory where marked_pric > 5000 ;

select product_name,size, phone_no marked_price from inventory where quantity>5;

select product_name,size, phone_no marked_price from inventory where quantity>100;

select product_name,size, phone_no marked_price from inventory where quantity>80;

select product_name,size, phone_no marked_price from inventory where quantity>50;

select distinct(product_name), brand_name from myntra ;

select product_name, marked_price, discounted_price from  inventory where  discounted_price>5000;

select product_name,marked_price, discounted_price from  inventory  where  discounted_price<6000;


