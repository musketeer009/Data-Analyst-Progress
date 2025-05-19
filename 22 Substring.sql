
use practice;
show tables;
show columns from myntra;
select * from myntra;


select * from myntra;
select substring(product_name, 1,4) from myntra;
select substring(brand_name,1,4) from myntra;
select left(product_name, 4) from myntra;
select substring(product_name, 1,4) from myntra;
select * from myntra;

select product_name from myntra;

select substring(product_name, -4,-1) from myntra; #  show error  becouse length should be positive or 0
select substring(product_name, -1,4) from myntra; #  acc to  net mysql does not support negative position for substring

select substring(product_name, -4,2) from myntra; # make negative index same

SELECT product_link,
RIGHT(product_link, LOCATE('/', REVERSE(product_link)) - 1) AS last_part
FROM myntra;

 select LENGTH(product_link) from myntra;
 
 
 SELECT REVERSE('abcde');  
 
 
 set @a = 10;
 select  @a as result;
 SET @MyVar = 200;

SELECT @MyVar AS Result;

SET @Var = '12345';

SELECT reverse(@Var) AS Result;

 SELECT LOCATE('b', 'abcabc', 3);  # here 3 is start optional  Output: 5
 
 SELECT LOCATE('cat', 'concatenate') AS position;
 SELECT LOCATE('/', 'kurta/biba/123456/buy') AS first_slash; # first '/' at 6 index
 select length('kurta/biba/123456/buy') -LOCATE('/', REVERSE('kurta/biba/123456/buy'))-1 as last;
 select length('kurta/biba/123456/buy') as len;
 
 select product_link,LENGTH(product_link) as "tlen", LENGTH(product_link) - (LOCATE('/', REVERSE(product_link)) - 1) as "len" from myntra;




SELECT SUBSTRING_INDEX('a/b/c/d', '/', 2);   # n>0 start from start-- Output: a/b
SELECT SUBSTRING_INDEX('a/b/c/d', '/', -1);  #n<0 start from end -- Output: d

select substring_index(substring_index(product_link, "/",-2), '/',1)  from myntra;
SELECT product_link,
SUBSTRING_INDEX(SUBSTRING_INDEX(product_link, '/', -2), '/', 1) AS product_id
FROM myntra;

SELECT 
  product_link,REVERSE(SUBSTRING(
      REVERSE(product_link),
      LOCATE('/', REVERSE(product_link)) + 1,
      LOCATE('/', REVERSE(product_link), LOCATE('/', REVERSE(product_link)) + 1) - LOCATE('/', REVERSE(product_link)) - 1
    )
  ) AS product_id
FROM myntra;


