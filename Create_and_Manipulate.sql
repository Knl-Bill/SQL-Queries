# 1. Find all the sailors with a rating above 7.

use db;
select * from db.sailor where rating>7;

# 2. Display all the names and colors of the boats.
  
select bname, color from db.boats;

# 3. Find all the boats with red color.
  
select * from db.boats where color = "red";

# 4. Find the names of sailors who have reserved boat number 1, 2, 3.
  
use db;
select sailor.sname, reserves.bid from sailor
left join reserves 
on sailor.sid = reserves.sid 
where reserves.bid in (1,2,3);

# 5. Find SIDs of the sailors who have reserved red boat.
  
use db;
select reserves.sid, reserves.bid , boats.color from boats
left join reserves
on boats.bid = reserves.bid
where boats.color = "red";

# 6. Find the color of the boats reserved by ‘lakshman’.
use db;
select sailor.sname, boats.color from sailor 
join reserves on sailor.sid = reserves.sid
join boats on boats.bid = reserves.bid
where sailor.sname = "Lakshman";

# 7. Find names of the sailors who have reserved at least one boat.
use db;
select sailor.sname, reserves.bid 
from sailor join reserves on sailor.sid = reserves.sid;

# 8. Find the names of sailors who have reserved a red or a green boat.
use db;
select sailor.sname, boats.color
from sailor
join reserves on sailor.sid = reserves.sid
join boats on reserves.bid = boats.bid
where boats.color in ("green","red");
