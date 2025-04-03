
select * from practicetable;

# Finding only unique rows
select  distinct * from practicetable;

# Finding unique values based on ID
select id from practicetable group by id order by id ;

# Finding unique values based on name
select name from practicetable  group by name order by name ;

# Finding unique values based on id using rank
select * from (
              select *, row_number() over(partition by id order by id) as "row_rank" from practicetable
              ) as T1 
              where T1.row_rank = 1;
              
              
select id, name, age, gender, email, phone_number, city, state, cost, date from (
              select *, row_number() over(partition by id order by id) as "row_rank" from practicetable
              ) as T1 
              where T1.row_rank = 1;
              
              
# Finding unique values based on multiple columns | Rajesh Patel & Patil
select id, name, age, gender, email, phone_number, city, state, cost, date from (
              select *, row_number() over(partition by id, name order by id) as "row_rank" from practicetable
              ) as T1 
              where T1.row_rank = 1;