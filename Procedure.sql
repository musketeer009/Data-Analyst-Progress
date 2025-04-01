
drop procedure getdata;
# create a procedure
 delimiter // 
 create procedure getdata(in userid int)
 begin
 select * from practicetable where id = userid;
 -- sql yhi terminate kr dets lkin hmn delimiter  // kra h to sql wait krega // k aane ka jha milega whi terminate krdega
 
 end //
 delimiter ;
 
 call getdata(4);
 
 # proceduure to update cost by percentage
 drop procedure updatecost;
 delimiter // 
 create procedure updatecost(in rate decimal(5,2))
 begin
 update practicetable 
 set cost = cost+ cost*(rate/100);
 select * from practicetable;
 end //
 delimiter ;
 
call updatecost(900) ;
select * from practicetable;


# deleting low rated restraunts and logging
drop table subswiggy;
drop procedure delete_row;

select * from subswiggy;
create temporary table subswiggy( id int,
name varchar(225), rating decimal(3,2), deletion_time timestamp);

delimiter // 
create procedure delete_row( in min_rating decimal(3,2))
begin
insert into subswiggy(id, name, rating, deletion_time) select id, name, rating, now() from swiggy.restaurants;

delete from subswiggy
where rating<min_rating;
end //
delimiter ;
call delete_row(5.00);
-- procedure create krn pr value insert ku nhi ho rha call krn pr ho rha h