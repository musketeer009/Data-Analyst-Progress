
# function to calculate age
drop function if exists calculateage;
delimiter //
create function calculateage(birth_date DATE ) RETURNS int
deterministic
begin
declare age int;
set age = Year(CURDATE()) - year(birth_date);
RETURN age;
end//
delimiter ;

select calculateage('2002-05-10') as age;
select (Year(CURDATE()) - year('2002-05-20')) as age;

# function to calculate tax
drop function if exists tax;
delimiter //
create function tax( cost DECIMAL(10, 2), tax_rate DECIMAL(5,2) )RETURNS decimal(10,2)
deterministic
begin
declare tax decimal(10,2);
set tax = cost * (tax_rate/100);
return tax;
end
// delimiter ;

select tax(2000, 5) as age;



# create function categorize age

drop function if exists categorize_age;
delimiter //
create function categorize_age(age int) RETURNS varchar(20)
deterministic
begin
declare category varchar(20);
if age < 18 then
set category = 'child';
elseif age between 18 and 35 then
set category = 'adult';
else
set category = 'senior';
end if;
return category;
end // 
delimiter ;

select categorize_age(5) as category;

# function to calculate simple interest

drop function if exists simple_interest;
delimiter //
create function simple_interest(principal decimal(10,2), rate decimal(5,2), time int) 
returns decimal(10,2)
deterministic
begin
declare interest decimal(10,2);
set interest = (principal * rate * time) / 100;
return interest;
end //
delimiter ;

select simple_interest(1000, 5, 2) as interest;


# function to calculate compound interest

drop function if exists compound_interest;
delimiter //
create function compound_interest(principal decimal(10,2), rate decimal(5,2), time int) 
returns decimal(10,2)
deterministic
begin
declare amount decimal(10,2);
set amount = principal * power((1 + rate / 100), time);
return amount - principal;
end //
delimiter ;

select compound_interest(1000, 5, 2) as interest;


# function to determine if a number is even or odd

drop function if exists even_or_odd;
delimiter //
create function even_or_odd(num int) returns varchar(10)
deterministic
begin
declare result varchar(10);
if num % 2 = 0 then
set result = 'even';
else
set result = 'odd';
end if;
return result;
end //
delimiter ;

select even_or_odd(7) as result;


# function to categorize bmi

drop function if exists categorize_bmi;
delimiter //
create function categorize_bmi(weight decimal(5,2), height decimal(5,2)) 
returns varchar(20)
deterministic
begin
declare bmi decimal(5,2);
declare category varchar(20);
set bmi = weight / (height * height);
if bmi < 18.5 then
set category = 'underweight';
elseif bmi between 18.5 and 24.9 then
set category = 'normal';
elseif bmi between 25 and 29.9 then
set category = 'overweight';
else
set category = 'obese';
end if;
return category;
end //
delimiter ;

select categorize_bmi(70, 1.75) as category;