
# Finding outliers based on z score
select *, ABS(cost- AVG(COST) OVER()) /STDDEV(cost) over() as "z_score" FROM PRACTICETABLE order by z_score desc;

# removing outlier based on outlier on specific z score

select * from (
               select *, ABS(cost- AVG(COST) OVER()) /STDDEV(cost) over() as "z_score" FROM PRACTICETABLE 
               ) as T1 where T1.z_score<2;

select * from (
               select *, ABS(cost- AVG(COST) OVER()) /STDDEV(cost) over() as "z_score" FROM PRACTICETABLE 
               ) as T1 where T1.z_score<3;
