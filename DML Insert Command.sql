insert into user (name, email, phone_no) values
('Jack', 'jack@gmail', 1234567890),
('Rjesh', 'rajesh@gmail', 0987654321),
('Amit', 'amit@gmail', 1234509876),
('Sunil', 'sunil@gmail',6789012345);
    
insert into user values( 1 , 'shubham', 'sec-88', "shubham@gmail", 9, '10 may');
select * from user;

insert into transaction  (transection_id, sales_date_time, amount_paid, success,phone_no, transection_type) 
values (1,'2025-01-02', 2000,1 , 9069373135 ,'cash');

insert into transaction  (transection_id, sales_date_time, amount_paid,phone_no, transection_type) 
values (2,'2025-01-23', 2500 , 8826934135 ,'card');

insert into transaction  (transection_id, sales_date_time, amount_paid, success,phone_no, transection_type) 
values (1,'2025-12-16', 6000,1 , 456586798 ,'cash');

insert into transaction  (transection_id, sales_date_time, amount_paid, success,phone_no, transection_type) 
values (1,'2025-02-16', 2300,0 , 7313590693 ,'upi');

insert into transaction  (transection_id, sales_date_time, amount_paid, success,phone_no, transection_type) 
values (5,'2025-04-11', 2300,0 , 7313590693 ,'upi');

select * from transaction;

insert into gfg.orders (uid)
values (1),(2),(3),(4);
            
insert into  inventory (product_id, size, product_name,phone_no ) 
values (33456,5,'toaster',1234567890), (11325,56,'belt',0987654321);