# 1. Find the names of the sailors who have reserved both a red boat and a green boat.
  
use db;
select sailor.sname from sailor where sid in
(select reserves.sid from reserves where bid in (select boats.bid from boats where boats.color = "red"))
and sid in
(select reserves.sid from reserves where bid in (select boats.bid from boats where boats.color = "green"));

# 2. Find the SIDs of all sailors who have reserved red boats but not green boats.
  
use db;
select sailor.sname from sailor where sid in
(select reserves.sid from reserves where bid in (select boats.bid from boats where boats.color = "red"))
and sid not in
(select reserves.sid from reserves where bid in (select boats.bid from boats where boats.color = "green"));

# 3. Find the names of sailors who have reserved boat number 3.
  
use db;
select sailor.sname,boats.bid from sailor
join reserves on reserves.sid = sailor.sid
join boats on boats.bid = reserves.bid
where reserves.bid = 3; 

# 4. Find the sailors whose rating is better than the sailor called ‘ram’.
  
use db;
select sailor.sid, sailor.sname from sailor
where sailor.rating > (select sailor.rating from sailor where sailor.sname = "ram");

# 5. Find the sailors with the highest ratings.
  
use db;
select sailor.sname, sailor.rating from sailor
order by sailor.rating DESC;

# 6. Count the number of boats booked in Reserves table.
  
use db;
select count(bid) from reserves; 

# 7. Find the sum of all ratings from Sailor.
  
use db;
select sum(rating) from sailor;

# 8. Find the sum of distinct age of sailors.
  
use db;
select distinct sum(age) from sailor;
