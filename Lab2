#1
use db;
select sailor.sname from sailor where sid in
(select reserves.sid from reserves where bid in (select boats.bid from boats where boats.color = "red"))
and sid in
(select reserves.sid from reserves where bid in (select boats.bid from boats where boats.color = "green"));

#2
use db;
select sailor.sname from sailor where sid in
(select reserves.sid from reserves where bid in (select boats.bid from boats where boats.color = "red"))
and sid not in
(select reserves.sid from reserves where bid in (select boats.bid from boats where boats.color = "green"));

#3
use db;
select sailor.sname,boats.bid from sailor
join reserves on reserves.sid = sailor.sid
join boats on boats.bid = reserves.bid
where reserves.bid = 3; 

#4
use db;
select sailor.sid, sailor.sname from sailor
where sailor.rating > (select sailor.rating from sailor where sailor.sname = "ram");

#5
use db;
select sailor.sname, sailor.rating from sailor
order by sailor.rating DESC;

#6
use db;
select count(bid) from reserves; 

#7
use db;
select sum(rating) from sailor;

#8
use db;
select distinct sum(age) from sailor;
