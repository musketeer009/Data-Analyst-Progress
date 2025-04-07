
select * from practicetable;

# Add new columns for day, month and year

alter table practicetable 
add column day varchar(20),
add column month varchar(20),
add column year varchar(20);

select * from practicetable;

# Update the new columns with the extracted day, month, year values

update practicetable
set day = day(date),
    month = month(date),
    year = year(date);
    
select * from practicetable;
    
# Add new column for the day of the week & save day name there

alter table practicetable
add column day_week varchar(20);

update practicetable 
set day_week= dayname(date);
  
alter table practicetable
rename column day_week to day_name ;

select * from practicetable;

# Add an new column for the name of the month & save day name there

alter table practicetable
add column month_name varchar(20);

update practicetable 
set month_name = monthname(date);

select * from practicetable;