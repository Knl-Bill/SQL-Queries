#LAB3 
#1
use db;
select avg(sailor.age) from sailor;

#2
select distinct avg(sailor.age) from sailor;

#3
use db;
select sailor.age from sailor order by sailor.age DESC
limit 1;

#4
use db;
select sailor.age from sailor order by sailor.age 
limit 1;

#5
use db;
select avg(sailor.age) from sailor where sailor.rating in (10);

#6
use db;
select distinct  count(sailor.sname) from sailor;

#7
use db;
select sailor.sname, sailor.age from sailor order by sailor.age DESC limit 1;

#8
use db;
select distinct count(sailor.sid) from sailor;
