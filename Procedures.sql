# 1. Create a procedure to display all names of the sailors whose ratings are greater than 3 and count all the table rows.

delimiter //
create procedure display1()
begin
declare sname_count int;
select count(*) into sname_count
from db.sailor
where sailor.rating > 3;
select sname
from db.sailor 
where sailor.rating>3;
select sname_count;
end;
// delimiter ;

call display1(); 

# 2. Create a procedure to display the names of boats and count the total no of boats.
	
delimiter //
create procedure display2()
begin
select bname from db.boats;
select count(bname) as b_count from db.boats;
end;
// delimiter ;
call display2();

# 3. Create a procedure to display the average ratings and average age of all the sailors using OUT parameter 
delimiter //
create procedure display3(
	out avgage decimal(5,3),
    out avgrating decimal(5,3)
)
begin
select avg(age) into avgage from db.sailor;
select avg(rating) into avgrating from db.sailor;
end;
// delimiter ;
call display3(@avgage,@avgrating);
select @avgage as Avg_age ,@avgrating as Avg_rating;

# 4. Crate a procedure to display the oldest and youngest sailors from the table using OUT parameter.
delimiter //
create procedure display4(
	out minage int,
    out maxage int
)
begin
select min(age) into minage from db.sailor;
select max(age) into maxage from db.sailor;
end;
// delimiter ;
call display4(@minage,@maxage);
select @minage as Min_age, @maxage as Max_age;

# 5. Create a procedure to display all the rows in the reserves table and the total count of all the rows in the table
delimiter //
create procedure display5()
begin
select * from db.reserves;
select count(*) from db.reserves;
end;
// delimiter ;
call display5();
