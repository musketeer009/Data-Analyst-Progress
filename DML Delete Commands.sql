
select * from inventory;

DELETE FROM inventory
WHERE size=5;

DELETE FROM inventory
WHERE product_name = 'tshirt';

DELETE FROM inventory
WHERE quantity = 0;

DELETE FROM inventory
WHERE discounted_price > 5000;


DELETE FROM inventory
WHERE size = 'Small';


DELETE FROM inventory
WHERE phone_no IS NULL;


DELETE FROM inventory
WHERE phone_no like "%675%";

DELETE FROM inventory
WHERE prod_disc = 'long';


TRUNCATE TABLE inventory;

select * from inventory;