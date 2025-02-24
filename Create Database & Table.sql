 create database if not exists dabatch;
 CREATE TABLE IF NOT EXISTS dabatch.users1 (
     user_id INT,
     username VARCHAR(255));
    
    
# create database gfg
create database gfgs;
drop database if exists gfgs;


# create table users add column (name,phone_no,email,location)
create table gfgs.users 
(
	name varchar(20),
    phone_no varchar(13),
    email varchar(50),
    location varchar(255)
);


# create tables users, inventory and transection in database student with require constraints

-- user (user_name, phone_no, email,user_id, dob,address)

-- inventory (product_id, prod_name, quantity, marked_price, discount_price, size, phone number)   
         
-- transection (transection_id, date, marked_price, amount paid,successful, phone number ,transection_type)   

create table if not exists user (
    id int PRIMARY KEY,
    name varchar(20) NOT NULL,
    phone_no char(10) NOT NULL unique,
    email varchar(40) NOT NULL unique,
    dob varchar(20),
	address varchar(50)
);



create table if not exists inventory (
    product_id int(7) PRIMARY KEY,
    product_namwe char(20) NOT NULL unique,
    quantity int(5),
    marked_price int(5),
    discount_price int(5),
    size int(5),
    phone_no int(10) NOT NULL);
    
 
 create table transaction(
 transection_id int not null,
 transaction_date DATETIME DEFAULT CURRENT_TIMESTAMP,      
 amount_paid int,
 success int default 0,
 phone_no varchar(10),
 transection_type char(250));           