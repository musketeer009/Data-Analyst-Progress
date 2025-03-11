

# 1. List the new users added in 2022
select * from user_2022 except select * from user_2021;

# 2. List the new users added in 2023
select * from user_2023 except select * from user_2022 ;

# 3. List the users who left us
(select * from user_2021 except select * from user_2022) except select * from user_2023;

# 4. List all the users that are there throughout the database for year 2021 & 2022
select * from user_2021 union select * from user_2022;

# 5. List all the users that are there throughout the database
select * from user_2021 union select * from user_2022 union select * from user_2023;

# 6. List the users that are there with us from last 3 years
select * from user_2021 intersect select * from user_2022 intersect select * from user_2023;


# 7. List the all the users except that users who are there with us from 3 years
(select * from user_2022 except select * from user_2021) union  (select * from user_2023 except select * from user_2022) 
union  (select * from user_2021 except select * from user_2023);

select * from user_2021 union select * from user_2022 union select * from user_2023
except 
select * from user_2021 INTERSECT select * from user_2022 INTERSECT select * from user_2023;

# 8. Operators with Join

select * from user_2021 as t_2021 left join user_2022 as t_2022 on t_2021.User_ID = t_2022.User_ID;

select * from user_2021 as t_2021 right join user_2022 as t_2022 on t_2021.User_ID = t_2022.User_ID;

select * from user_2021 as t_2021 left join user_2022 as t_2022 on t_2021.User_ID = t_2022.User_ID
union
select * from user_2021 as t_2021 right join user_2022 as t_2022 on t_2021.User_ID = t_2022.User_ID;

select * from user_2021 as t_2021 left join user_2022 as t_2022 on t_2021.User_ID = t_2022.User_ID
union all
select * from user_2021 as t_2021 right join user_2022 as t_2022 on t_2021.User_ID = t_2022.User_ID;
