 select * from practicetable;
# create a exception handler to handle non existing table
drop procedure if exists handler1;
delimiter //
create procedure handler1()
begin 
declare continue handler for sqlexception
begin
select "The table partical does not exists"as message;
end;
 select * from partical;
end //
delimiter ;

call  handler1();

# create a exception to handle devisible by zero

DELIMITER //

CREATE PROCEDURE not_divisible_by_zero(IN number INT)
BEGIN
    -- Check if the number is zero
    IF number= 0 THEN
        SELECT 'Not divisible by zero' AS Message;
    ELSE
        SELECT 'Divisible by zero' AS Message;
    END IF;
    
END //

DELIMITER ;



# create handler to handle duplicate id

delimiter //
create procedure detect_duplicate()
begin 
declare continue handler for sqlexception
begin
select "Id already exists" as message;
end;
 insert into practicetable(id, name, age, gender, phone_number, email, city, state,cost, date)
  values (211, 'Amit Kumar', 23, 'Male', 7588905432, 'amit@example.com', 'Kerla', 'kerla', 1200, 2024-04-13);
end //
delimiter ;

call detect_duplicate();