
use gfg;
Create table if not exists partition_table(
first_name varchar(10), last_name varchar(20), age int(3),
city varchar(20), email varchar(50), dob date
);

select * from partition_table;

# RANGE PARTITIONING
drop table if exists partition_table;
Create table if not exists partition_table(
first_name varchar(20), last_name varchar(20), age int(3),
city varchar(20), email varchar(50), dob date
) PARTITION BY RANGE(YEAR(dob))
(
PARTITION p1 values less than (1990),
PARTITION p2 values less than (2000),
PARTITION p3 values less than (2010),
PARTITION p4 values less than (2020),
PARTITION p5 values less than (2025))
;

select * from partition_table;
insert into partition_table (first_name , last_name , age, city , email , dob ) values 
    ('John', 'Doe', 30, 'New York', 'john.doe@example.com', "1982-04-16"),
	('Jane', 'Smith', 25, 'Los Angeles', 'jane.smith@example.com',"2023-04-16"),
    ('Michael', 'Johnson', 40, 'Chicago', 'michael.johnson@example.com',"2004-04-16"),
    ('Emily', 'Brown', 35, 'San Francisco', 'emily.brown@example.com',"1997-04-16"),
    ('David', 'Jones', 28, 'San Francisco', 'david.jones@example.com',"2012-04-16"),
    ('Sarah', 'Davis', 32, 'Chicago', 'sarah.davis@example.com',"1988-04-16"),
    ('Robert', 'Wilson', 45, 'Chicago', 'robert.wilson@example.com',"2021-04-16"),
    ('Jennifer', 'Martinez', 27, 'New York', 'jennifer.martinez@example.com',"1999-04-16"),
    ('William', 'Taylor', 38, 'Los Angeles', 'william.taylor@example.com',"2008-04-16"),
    ('Jessica', 'Anderson', 33, 'New York', 'jessica.anderson@example.com',"1995-04-16"),
    ('Daniel', 'Thomas', 29, 'Los Angeles', 'daniel.thomas@example.com', "2005-04-16"),
    ('Maria', 'Jackson', 42, 'New York', 'maria.jackson@example.com',"2011-04-16"),
    ('James', 'White', 31, 'Denver', 'james.white@example.com', "2019-04-16"),
    ('Elizabeth', 'Harris', 36, 'San Francisco', 'elizabeth.harris@example.com',"1990-04-16"),
    ('Christopher', 'Clark', 39, 'San Francisco', 'christopher.clark@example.com',"2000-04-16"),
    ('Amanda', 'Lewis', 26, 'Los Angeles', 'amanda.lewis@example.com',"2023-04-16"),
    ('Matthew', 'Walker', 34, 'Chicago', 'matthew.walker@example.com', "1989-04-16"),
    ('Ashley', 'Allen', 37, 'Las Angeles', 'ashley.allen@example.com',"1992-04-16"),
    ('Joseph', 'Young', 41, 'miami', 'joseph.young@example.com',"2022-04-16"),
    ('Stephanie', 'Scott', 24, 'miami', 'stephanie.scott@example.com',"1999-04-16");
    
    select * from partition_table;
    select * from partition_table where first_name like "w%" and dob between '2000-01-01' AND '2022-12-31';
    
     select * from partition_table where dob between '2000-01-01' AND '2022-12-31';
     
	select * from partition_table where dob between '1980-01-01' AND '2000-12-31';
	select *, row_number() over(partition by dob) as "row_rank" from partition_table order by dob ;
    
    # LIST PARTITIONING
    
     drop table if exists partition_table;
Create table if not exists partition_table(
first_name varchar(20), last_name varchar(20), age int(3),
city varchar(20), email varchar(50), dob date,
city_code INT GENERATED ALWAYS AS (
CASE
   when city = "New York" then 1
   when city = "Los Angeles" then 2
   when city = "San Francisco" then 3
   when city in ("Chicago", "miami") then 4
else null
end
)stored
) 

PARTITION BY LIST (city_code)
(
PARTITION ny values in (1),
PARTITION la values in (2),
PARTITION sf values in (3),
PARTITION c values in (4),
PARTITION p_null VALUES IN (NULL) -- Add this for NULL values or use PARTITION p_default DEFAULT
);
select * from partition_table;

select * from partition_table where city = "new york";
    
select * from partition_table where first_name = "jessica";

select * from partition_table where city_code = 1;


# HASH PARTITIONING

drop table if exists partition_table;
Create table if not exists partition_table(
first_name varchar(20), last_name varchar(20), age int(3),
city varchar(20), email varchar(50), dob date)
PARTITION BY HASH(city) PARTITIONS 4;

# SUBPARTITIONING
drop table if exists partition_table;
Create table if not exists partition_table(
first_name varchar(20), last_name varchar(20), age int(3),
city varchar(20), email varchar(50), dob date)
PARTITION BY range(year(dob)) 
SUBPARTITION BY HASH(age) SUBPARTITIONS 4(
PARTITION p1 values less than (1990),
PARTITION p2 values less than (2000),
PARTITION p3 values less than (2010),
PARTITION p4 values less than (2020),
PARTITION p5 values less than (2025));
