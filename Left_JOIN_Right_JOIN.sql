
show databases;

use gfg;

# Create table employee
create table  if not exists employee(  
empid int primary key, 
first_name char(20),
last_name char(20),
dept_id int 
);

alter table employee rename column empid to emp_id;


# Create table department
create table if not exists department(
dept_id int,
dept_name char);

alter table department modify column dept_id int primary key;
alter table department modify column dept_name varchar(50) ;

# Create table salary
create table if not exists salary(
emp_id int primary key,
salary int);

# Insert in table employee
INSERT INTO gfg.employee (Empid, first_name, last_name, dept_id) VALUES
(1, 'Ashish', 'Gupta', 1), (2, 'Ankur', 'Gupta', 2), (3, 'Shivam', 'Kumar', 3), 
(4, 'Sakshi', 'Jain', 4), (5, 'Gurpreet', 'singh', 5), (6, 'Sakshi','Kumar',2), 
(7, 'Rajesh','Sharma',4), (8, 'Harsh','Sakari',6),(9,'Kajal','Kansal',7);


# Insert in table department
INSERT INTO gfg.department (Dept_id, Dept_Name) VALUES
(1, 'Mentor'), (2, 'Designer'), (3, 'Editor'), (4, 'Onboarding'), (5, 'Project Manager'),(10, 'CEO');


# Insert in table salary
INSERT INTO gfg.salary(Emp_ID, Salary) VALUES
(1, 40000), (2, 60000), (3, 50000), (4, 80000), (5, 78000),(6,90000),(7,68000);

select * from employee;
select * from department;
select * from salary;


select * from employee left join department  on department.dept_id =employee.dept_id;
select * from employee as t1 left join department as t2  on t1.dept_id = t2.dept_id;
select * from department as t1 left join employee as t2  on t1.dept_id = t2.dept_id;
select * from employee as t1 left join department as t2  on t1.dept_id = t2.dept_id where t1.dept_id between 1 and 5 ;


 alter table employee modify column emp_id int, drop primary key; 
insert into employee values (1,'Ashish', 'Gupta', 1);

  
# LEFT JOIN
select  * from employee as t1 left join department as t2  on t1.dept_id = t2.dept_id where t1.dept_id between 1 and 5 ;
select distinct * from employee as t1 left join department as t2  on t1.dept_id = t2.dept_id where t1.dept_id between 1 and 5  ;
select* from employee;
insert into employee values (0,'Akash', 'Kumar', 1);
delete from employee where emp_id = 0;

select * from salary as t1 left join employee as t2  on t1.emp_id = t2.emp_id;
select * from employee as t1 left join salary as t2  on t1.emp_id = t2.emp_id;


# RIGHT JOIN
select * from employee right join department  on department.dept_id =employee.dept_id;
select * from employee as t1 right join department as t2  on t1.dept_id = t2.dept_id;
select * from department as t1 right join employee as t2  on t1.dept_id = t2.dept_id; 
select * from salary as t1 right join employee as t2  on t1.emp_id = t2.emp_id;
select * from employee as t1 right join salary as t2  on t1.emp_id = t2.emp_id;
