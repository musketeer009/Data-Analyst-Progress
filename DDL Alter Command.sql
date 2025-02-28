alter table transaction add column email varchar(50) default null;

alter table inventory rename column  discount_prphone_noice to discounted_price;

select * from inventory order by discounted_price asc, doe desc;

alter table inventory add column email varchar(50) default null;

alter table inventory drop column email;

alter table inventory modify column size varchar(50);

alter table inventory modify dom Date;

alter table myntra add column discounted_amount int as (marked_price - discounted_price)  ;

alter table myntra drop column discounted_amount;

alter table myntra add column discounted_amount int;

alter table myntra modify discounted_amount int not null;