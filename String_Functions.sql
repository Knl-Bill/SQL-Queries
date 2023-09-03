# 1. Concat bid & bname of Boats & display along with color.
  
use db;
select CONCAT(bid , " " , bname) as address, color from boats;

# 2. Returns characters from the left of CHAR by deleting all leftmost characters that appear in set. Display all sailors information by removing characters of sname if starts with _R‘
select sid, concat(replace(substr(sname,1,1),"R",""), substr(sname,2,length(sname))) as sname from sailor;
#3
select bid, LOWER(bname) as bname, color from boats; 

#4
select sid, UPPER(sname) as sname, age, rating from sailor; 

#5
use db;
select sid, concat(upper(substr(sname,1,1)),lower(substr(sname,2,length(sname)))) as sailor from sailor;

#6
select length("This Sentence has 31 characters") as length;

#7
use db;
select bid, substr(bname,3,4) as bname, color from boats;

#8
select replace("ABCDABCDABABAB","A","a") as string
