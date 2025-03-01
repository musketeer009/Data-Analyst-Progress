
select * from inventory;

UPDATE inventory 
set product_name = 'jeans'
where product_name = 'pant';

UPDATE inventory 
set quantity= 100
where quantity= 50;

UPDATE inventory 
set discounted_price = discounted_price + 50
where discounted_price <= 1500; 

UPDATE inventory
set quantity = quantity + 10
where product_name = 'tshirt';


UPDATE inventory
set discounted_price = discounted_price - 100
where size = 'large';


UPDATE inventory
set prod_disc = 'summer'
where product_name = 'Jeans';


UPDATE inventory
set phone_no = '9876543210'
where product_name = 'Shoes';


UPDATE inventory
set discounted_price = discounted_price * 0.9
where discounted_price > 2000;


UPDATE inventory
set quantity = quantity - 5,
    discounted_price = discounted_price + 50,
    size = 'large'
where product_name = 'Jacket';


UPDATE inventory
set quantity = 0
where quantity < 0;


UPDATE inventory
set size = 'small'
where product_name LIKE '%Hoodie%';
