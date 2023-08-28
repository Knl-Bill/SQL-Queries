#1 
use db;
create trigger capitalize
before insert
on db.student
for each row
set NEW.first_name = upper(NEW.first_name);

use db;
insert into db.student values("dbms","CS21B1066",78);

#2
use db;
DELIMITER //
CREATE TRIGGER del
BEFORE DELETE
ON db.student
FOR EACH ROW
BEGIN
    IF OLD.sr = 10 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Entry with sr = 10 can''t be deleted';
    END IF;
END;
//
DELIMITER ;
use db;
delete from student where sr = 10;

#3
DELIMITER //
create trigger invalid
before insert
on db.student
for each row
begin
	if new.sr < 65 then
		signal  sqlstate '45000'
			set message_text = 'Invalid sr value';
	end if;
end;
//
DELIMITER ;

use db;
insert into student values("Another_dummy","cs21b1065",61);
