# 1. Display the average age of sailors.
  
use db;
select avg(sailor.age) from sailor;

# 2. Find the average of distinct age of sailors.
  
select distinct avg(sailor.age) from sailor;

# 3. Find the age of the oldest sailor.
  
use db;
select sailor.age from sailor order by sailor.age DESC
limit 1;

# 4. Find the age of the youngest sailor.
  
use db;
select sailor.age from sailor order by sailor.age 
limit 1;

# 5. Find the average age of sailor with a rating of 10.
  
use db;
select avg(sailor.age) from sailor where sailor.rating in (10);

# 6. Count the number of different sailor names.
  
use db;
select distinct  count(sailor.sname) from sailor;

# 7. Find the name and age of the oldest sailor.
  
use db;
select sailor.sname, sailor.age from sailor order by sailor.age DESC limit 1;

# 8. Count the number of sailors.
  
use db;
select distinct count(sailor.sid) from sailor;
