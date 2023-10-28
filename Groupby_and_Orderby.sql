#1 Find the names of the sailors who are older than the oldest sailor with a rating of 10.
use db;
select sailor.sname from sailor where sailor.age > (select sailor.age from sailor where sailor.rating in (10) 
and sailor.age order by sailor.age DESC limit 1);

#2 Display the names of the sailors in alphabetical order.
use db;
select sailor.sname from sailor order by sailor.sname;

#3 Display all the sailors according to rating (topper first), if rating is the same then sort according to age (older first).
use db;
select sailor.sname, sailor.rating from sailor order by sailor.rating DESC, age DESC;

#4 Display all the sailors according to rating (topper first), if rating is the same then sort according to age (younger first).
use db;
select sailor.sname, sailor.rating from sailor order by sailor.rating DESC, age;

#5 Display all the sailors according to rating (lower rating first), if rating is the same then sort according to age (younger first).
use db;
select sailor.sname, sailor.rating from sailor order by sailor.rating, age;

#6 For each red boat, find the number of reservations.
use db;
select count(reserves.bid) from reserves
join boats on boats.bid = reserves.bid
where boats.color in ("red"); 

#7 Find the average age of sailor for each rating level that has at least two sailors.
use db;
select avg(sailor.age) from sailor group by sailor.rating having count(sailor.sid)>1;

#8 Find those ratings for which the average age of sailors is the minimum over all ratings.
use db;
select sailor.rating from sailor group by sailor.rating order by avg(sailor.age) limit 1;
