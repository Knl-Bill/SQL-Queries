#LAB4
#1
use db;
select sailor.sname from sailor where sailor.age > (select sailor.age from sailor where sailor.rating in (10) 
and sailor.age order by sailor.age DESC limit 1);

#2
use db;
select sailor.sname from sailor order by sailor.sname;

#3
use db;
select sailor.sname, sailor.rating from sailor order by sailor.rating DESC, age DESC;

#4
use db;
select sailor.sname, sailor.rating from sailor order by sailor.rating DESC, age;

#5
use db;
select sailor.sname, sailor.rating from sailor order by sailor.rating, age;

#6
use db;
select count(reserves.bid) from reserves
join boats on boats.bid = reserves.bid
where boats.color in ("red"); 

#7
use db;
select avg(sailor.age) from sailor group by sailor.rating having count(sailor.sid)>1;

#8
use db;
select sailor.rating from sailor group by sailor.rating order by avg(sailor.age) limit 1;
