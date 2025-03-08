show databases;
use gfg;
create table  if not exists employee(  
empid int primary key, 
first_name char(20),
last_name char(20),
dept_id int 
);
alter table employee rename column empid to emp_id;

create table if not exists department(
dept_id int,
dept_name char);
alter table department modify column dept_id int primary key;
alter table department modify column dept_name varchar(50) ;

create table if not exists salary(
emp_id int primary key,
salary int);

INSERT INTO gfg.employee (Empid, first_name, last_name, dept_id) VALUES
(1, 'Ashish', 'Jangra', 1), (2, 'Ankur', 'Gupta', 2), (3, 'Shivam', 'Kumar', 3), 
(4, 'Sakshi', 'Awasthi', 4), (5, 'Avneet', 'Kaur', 5), (6, 'Sakshi','Singhal',1), 
(7, 'Adarsh','Sharma',4), (8, 'Prakash','Sakari',6),(9,'Puneet','Kansal',7);


INSERT INTO gfg.department (Dept_id, Dept_Name) VALUES
(1, 'Mentor'), (2, 'Designer'), (3, 'Editor'), (4, 'Onboarding'), (5, 'Project Manager'),(10, 'CEO');

INSERT INTO gfg.salary(Emp_ID, Salary) VALUES
(1, 50000), (2, 54000), (3, 30000), (4, 60000), (5, 58000),(6,60000),(7,56000);

select * from employee;
select * from department;
select * from salary;


select * from employee left join department  on department.dept_id =employee.dept_id;
select * from employee as t1 left join department as t2  on t1.dept_id = t2.dept_id;
select * from department as t1 left join employee as t2  on t1.dept_id = t2.dept_id;
select * from employee as t1 left join department as t2  on t1.dept_id = t2.dept_id where t1.dept_id between 1 and 5 ;


 alter table employee modify column emp_id int, drop primary key; 
insert into employee values (1,'Ashish', 'Jangra', 1);
insert into employee values (11,'Ashish', 'Jangra', 1);
  
  # get duplicates entry on values
  select emp_id , first_name,last_name,dept_id, count(*) from employee  group by emp_id , first_name,last_name,dept_id having count(*)> 1;
# remove duplicates
#delete * from employee where emp_id not in(select min(emp_id) from employee  group by emp_id , first_name,last_name,dept_id having count(*)> 1

select  * from employee as t1 left join department as t2  on t1.dept_id = t2.dept_id where t1.dept_id between 1 and 5 ;
select distinct * from employee as t1 left join department as t2  on t1.dept_id = t2.dept_id where t1.dept_id between 1 and 5  ;
select* from employee;
insert into employee values (0,'Ashish', 'Jangra', 1);
delete from employee where emp_id = 0;

select * from salary as t1 left join employee as t2  on t1.emp_id = t2.emp_id;
select * from employee as t1 left join salary as t2  on t1.emp_id = t2.emp_id;



select * from employee right join department  on department.dept_id =employee.dept_id;
select * from employee as t1 right join department as t2  on t1.dept_id = t2.dept_id;
select * from department as t1 right join employee as t2  on t1.dept_id = t2.dept_id; 
select * from salary as t1 right join employee as t2  on t1.emp_id = t2.emp_id;
select * from employee as t1 right join salary as t2  on t1.emp_id = t2.emp_id;



#INNER JOIN


select * from employee inner join department  on department.dept_id =employee.dept_id;
select * from employee as t1 inner join department as t2  on t1.dept_id = t2.dept_id;
select * from department as t1 inner join employee as t2  on t1.dept_id = t2.dept_id; 
select * from salary as t1 inner join employee as t2  on t1.emp_id = t2.emp_id;
select * from employee as t1 inner join salary as t2  on t1.emp_id = t2.emp_id;

# all three tables

SELECT * 
FROM gfg.employee AS t1 
LEFT JOIN gfg.salary AS t2  
  ON t1.emp_id = t2.emp_id 
LEFT JOIN gfg.department AS t3 
  ON t3.dept_id = t1.dept_id;



select * from gfg.employee t1 
right join gfg.department t2 on t1.dept_id = t2.dept_id 
right join gfg.salary t3  on t1.emp_id = t3.emp_id;

select t1.emp_id, first_name, last_name, t2.dept_id, dept_name, salary from gfg.employee t1 
right join gfg.department t2 on t1.dept_id = t2.dept_id 
right join gfg.salary t3  on t1.emp_id = t3.emp_id;


select * from gfg.employee as t1 inner join gfg.salary as t2  on t1.emp_id = t2.emp_id inner join 
gfg.department as t3 on t3.dept_id = t1.dept_id;

show tables;


# cross join

select * from employee;
select * from department;
select * from employee cross join department ;
select * from  department cross join employee  ;
select * from employee;
select * from department;
select * from  department cross join employee;
select * from  employee cross join department;
select * from  employee cross join salary;
select * from  department cross join salary;
select * from   salary  cross join employee;
select * from  salary  cross join  department;
select * from employee;
select count(*) from department;
select count(*) from  department cross join employee  ;
select count(*) from  employee cross join department   ;
 