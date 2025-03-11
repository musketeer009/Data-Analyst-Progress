
use gfg;

create table if not exists user_2021 ( user_id int, Namee varchar(20));

create table if not exists user_2022 ( user_id int, Namee varchar(20));

create table if not exists user_2023 ( user_id int, Namee varchar(20));

drop table if exists user_2021;
drop table if exists user_2022;
drop table if exists user_2023;

 insert into user_2021 values(1,'Ankit'), (2,'Sourab'),(7, 'rajat');
 
 insert into user_2022 values(1,'Ankit'), (2,'Sourab'),(3, 'Rajat'),(4,"Vishakha");
 
 insert into user_2023 values(1,'Ankit'), (2,'Sourab'),(3, 'Rajat'),(4,"Vishakha"), (5, 'Sanjana');
 
 create table if not exists user_2026 ( user_id int, Namee varchar(20), age int );
 insert into user_2026 values(1,'Ankit',23), (2,'Sourab',34),(3, 'rajat',45),(4,"Vishakha",21), (5, 'Sanjana',22);
 
 
select * from user_2021;
select * from user_2022;
select * from user_2023;

# UNION
select * from user_2021 union select * from user_2022;

select * from user_2022 union select * from user_2023;

select * from user_2023 union select * from user_2021;

select * from user_2023 union select * from user_2021 union select * from user_2022;

select * from user_2026 union select * from user_2021; -- error


#UNION ALL 
select * from user_2021 union all select * from user_2022;

select * from user_2022 union all select * from user_2023;

select * from user_2023 union all select * from user_2021;

select * from user_2023 union all select * from user_2021 union all select * from user_2022;

(select * from user_2023 union all select * from user_2021) union all select * from user_2022;

(select * from user_2023 union all select * from user_2021 ) union  select * from user_2022;

select * from user_2026 union all select * from user_2021; -- error

# EXCEPT
select * from user_2021 except select * from user_2022;

select * from user_2022 except select * from user_2021;

select * from user_2023 except select * from user_2021  except  select * from user_2022;


#INTERSECT
select * from user_2021 intersect select * from user_2022;

select * from user_2022 intersect select * from user_2023;

-- including all three tables
select * from user_2022 intersect select * from user_2023 intersect select * from user_2021;