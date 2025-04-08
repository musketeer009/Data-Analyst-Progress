
select * from practicetable;

# Update Name
update practicetable set name = trim(name);

update practicetable set name = lower(name);
select * from practicetable;

# Update Gender
select distinct(gender) from practicetable ;

update practicetable set gender = lower(trim(gender));

select * from practicetable;


# Update City
select distinct(city) from practicetable ;

update practicetable set city = trim(city);
select * from practicetable;

# Update State
select distinct(state) from practicetable ;

update practicetable set state = trim(state);
select * from practicetable;

# Clean & Update email
update practicetable set email = lower(REGEXP_REPLACE(email,'[^a-zA-Z0-9@.]+', ''));
select * from practicetable;

# Clean Phone Number
select distinct(phone_number) from practicetable;
update practicetable set phone_number = REGEXP_REPLACE(phone_number, '[^0-9]+','');
select * from practicetable;

# Extracting username

alter table practicetable add column email_name varchar(20);
update practicetable set email_name = SUBSTRING_INDEX(email,'@',1);

select * from practicetable;

# Create location
alter table practicetable add column location varchar(50);
update practicetable set location = concat(city,', ', state);

select * from practicetable;

# amount_without_gst
alter table practicetable drop column cost_without_gst ;
alter table practicetable add column cost_without_gst decimal(10,2);
update practicetable set cost_without_gst = (cost*100)/118;

select * from practicetable;

# Adding Expiry Date
alter table practicetable add column expire_date date ;
update practicetable set expire_date = DATE_ADD(date, INTERVAL 3 YEAR);

select * from practicetable;

# Removing rows with Invalid Phone Number
delete from practicetable
where length(phone_number) != 10 OR  phone_number REGEXP ('[^0-9]') ;

select * from practicetable;

# Cleaning Gender even further
update practicetable set gender = case
when gender in ('m', 'MALE', 'male','Male') then 'M'
when gender in ('f', 'FEMALE', 'female','Female') then 'F'
else 'other'
end;

select * from practicetable;

# Cleaning/Validating Age
delete from practicetable where
age <=0 or age>=100;

select * from practicetable;