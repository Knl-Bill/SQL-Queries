# Question 1 
use db;
select * from db.sailor where rating>7;

#Question 2
select bname, color from db.boats;

#Question 3
select * from db.boats where color = "red";

#Question 4
use db;
select sailor.sname, reserves.bid from sailor
left join reserves 
on sailor.sid = reserves.sid 
where reserves.bid in (1,2,3);

#Question 5
use db;
select reserves.sid, reserves.bid , boats.color from boats
left join reserves
on boats.bid = reserves.bid
where boats.color = "red";

#Question 6
use db;
select sailor.sname, boats.color from sailor 
join reserves on sailor.sid = reserves.sid
join boats on boats.bid = reserves.bid
where sailor.sname = "Lakshman";

#Question 7
use db;
select sailor.sname, reserves.bid 
from sailor join reserves on sailor.sid = reserves.sid;

#Question 8
use db;
select sailor.sname, boats.color
from sailor
join reserves on sailor.sid = reserves.sid
join boats on reserves.bid = boats.bid
where boats.color in ("green","red");
