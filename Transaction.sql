-- we can use  start transaction; or begin; syntax both
-- start transaction id more good


select * from practicetable;
# create a transection

start transaction ;
update practicetable set cost = 3000 where id = '1';
select * from practicetable;

# transaction with rollback
start transaction;
update practicetable set cost = 1600 where id ='1';
rollback;
select * from practicetable;

start transaction;
update practicetable set cost = 1500 where id ='1';
select * from practicetable;
rollback;
select * from practicetable;

# transaction with commit

start transaction;
update practicetable set cost = 1500 where id ='1';
select * from practicetable;
commit;

start transaction;
update practicetable set cost = 1600 where id ='1';
select * from practicetable;
commit;
select * from practicetable;

start transaction;
update practicetable set cost = 2500 where id ='1';
select * from practicetable;
commit;
select * from practicetable;

# commit  & rollback

start transaction;
update practicetable set cost = 1600 where id ='1';
select * from practicetable;
commit;
rollback;
select * from practicetable;

start transaction;
update practicetable set cost = 2000 where id ='1';
select * from practicetable;
commit;
select * from practicetable;
rollback;
select * from practicetable;

# rollback & commit

start transaction;
update practicetable set cost = 1000 where id ='1';
select * from practicetable;
rollback;
select * from practicetable;
commit;
select * from practicetable;  

start transaction;
update practicetable set cost = 1000 where id ='1';
select * from practicetable;
rollback;
select * from practicetable;  


#commit  & rollback with multiple commands

 start transaction;
 insert into practicetable(id, name, age, gender, email, phone_number, city, state, cost, date) 
 VALUES (11, 'Raju', 30, 'Male', 'rajesh@example.com', '9876543210', 'Dhanbad', 'Bihar', 2300.70, '2023-05-05');
 
 insert into practicetable(id, name, age, gender, email, phone_number, city, state, cost, date) 
 VALUES (12, 'Aashish jangra', 30, 'Male', 'rajesh@example.com', '9876543210', 'Andhrapradesh', 'Andra', 1700.50, '2023-05-05');

update practicetable set cost = 1000 where id ='11';
select * from practicetable;
commit;
rollback;
select * from practicetable;  


 start transaction;
 insert into practicetable(id, name, age, gender, email, phone_number, city, state, cost, date) 
 VALUES (13, 'Suresh Rastogi', 30, 'Male', 'suresh@example.com', '9876543210', 'Maipuri', 'Uttar Pradesh', 2300.70, '2024-05-05');
 
 insert into practicetable(id, name, age, gender, email, phone_number, city, state, cost, date) 
 VALUES (14, 'Kusum jangra', 30, 'Male', 'rajesh@example.com', '9876543210', 'Arunanchal Pradesh', 'Aruna', 2700.50, '2024-05-05');
select * from practicetable;  
update practicetable set cost = 2500 where id ='14';
select * from practicetable;
commit;
select * from practicetable;  
rollback;
select * from practicetable;  

# rollback with multiple commands

 start transaction;
 insert into practicetable(id, name, age, gender, email, phone_number, city, state, cost, date) 
 VALUES (15, 'Sumit Banerjee', 23, 'Male', 'Sumit@example.com', '9876554610', 'Surajkund', 'Kolkata', 2310, '2024-02-23');
 
 insert into practicetable(id, name, age, gender, email, phone_number, city, state, cost, date) 
 VALUES (16, 'Radha Gautam', 25, 'Female', 'radha@example.com', '9876543210', 'Uttar Pradesh', 'Agra', 3000, '2024-06-16');
select * from practicetable;  

update practicetable set cost = 2500 where id ='15';
select * from practicetable; 
rollback;
select * from practicetable;