
#1 Rank every restaurant from most expensive to least expnsive
select *, rank() over() as 'rank'  from restaurants;
select *, rank() over( order by cost desc) as 'rank'  from restaurants;

#2 Rank every restaurant from most visited to least expnsive
select *, rank() over(order by rating_count desc) as 'rank' from restaurants;

#3 Rank every restaurant from most expensive to least expnsive as per their city
select *, rank() over(Partition by city order by cost desc) as 'rank' from restaurants;

#4 Dense-Rank every restaurant from most expensive to least expnsive as per their city
select *, rank() over(Partition by city order by cost desc) as 'rank',dense_rank() 
over(Partition by city order by cost desc) as 'dense_rank' from restaurants;

#5 Row -number every restaurant from most expensive to least expnsive as per their city
select *, row_number() over(Partition by city order by cost desc) as 'rank' from restaurants;

#6 Rank every restaurant from most expensive to least expnsive as per their city along with its city [ ie- adilabad -1, adilabad -2]
select *, concat( city, '-' , row_number() over(Partition by city  order by cost desc) )as 'row_rank'  from restaurants;

#7 find top 5 restaurants of every city as per their revenue

select *,cost*rating_count as 'revenue', row_number() over(Partition by city order by cost*rating_count desc) as 'rank' from restaurants ;

select * from (select *,cost*rating_count as 'revenue', row_number() over(Partition by city order by cost*rating_count desc) as 'row_rank' 
from restaurants ) as T1
where T1.row_rank<6;

#8 find top 5 restaurants of every cuisine as per their revenue
 select * from (select *, cost*rating_count as 'revenue', dense_rank() over(Partition by cuisine order by cost*rating_count desc) as 'row_rank' 
 from restaurants) as T1
 where T1.row_rank <6;

 -- american food makes most revenue
 
 #9 ranking based on each city
   
 select * ,cost*rating_count as 'revenue', row_number() over(partition by city order by cost*rating_count desc ) as 'row_rank' 
 from restaurants where city in ('Nacharam & Malkajigiri', ' New BEL Road', 'Abohar');
 
 #10 compare rank of specific city
  select * ,cost*rating_count as 'revenue', row_number() over(partition by city order by cost*rating_count desc ) as 'row_rank' 
 from restaurants where city in ('Bangalore', 'Amritsar', 'Abohar');
 
