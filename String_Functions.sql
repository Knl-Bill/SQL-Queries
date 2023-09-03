# 1. Concat bid & bname of Boats & display along with color.
  
use db;
select CONCAT(bid , " " , bname) as address, color from boats;

# 2.  Display all sailors information by removing characters of sname if starts with R.
  
select sid, concat(replace(substr(sname,1,1),"R",""), substr(sname,2,length(sname))) as sname from sailor;

# 3. Display all Boats information by showing their names in lower case.
  
select bid, LOWER(bname) as bname, color from boats; 

# 4. Display all Sailors information by showing their names in Upper case.
  
select sid, UPPER(sname) as sname, age, rating from sailor; 

# 5. Display all Sailors information by showing their names by Capitalizing first char.
  
use db;
select sid, concat(upper(substr(sname,1,1)),lower(substr(sname,2,length(sname)))) as sailor from sailor;

# 6. Find the number of characters in the given string. 
  
select length("This Sentence has 31 characters") as length;

# 7. Display boats information by starting their names with 3rd character & show only 4 characters.
  
use db;
select bid, substr(bname,3,4) as bname, color from boats;

# 8. Usage of replace function. 
  
select replace("ABCDABCDABABAB","A","a") as string
