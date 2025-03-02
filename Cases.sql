use gfg;

select * from employee;

-- Basic case for sales team
select name, 
case department
	when 'sales' then 'sales team'
    else 'other'
end as employee_name from employees;

-- Basic case for sales & marketing team
select name, 
case department
	when 'sales' then 'sales team'
    when 'marketing' then 'marketing team'
    else 'other'
end as employee_name from employees;

-- Cases with respect to age
select name, 
case 
	when age < 30 then 'Young'
    when age <= 30 and age <= 40 then 'mid-aged'
    else 'Senior'
end as employee_name from employees;


-- Nested Cases
select name, 
case 
	when age < 30 then 
		case
			when department = 'Sales' then 'Jr Sales'
            else 'Junior'
		end
	when age >= 30 and age <= 40 then 'Middle'
    else 'Senior'
end as employee_name from employees;



-- Dealing with null departments
select name,
case
	when department is null then 'No Department Assigned'
    else department
end as department_status from Employees;
