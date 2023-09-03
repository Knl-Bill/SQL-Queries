# SQL Queries 

**db, A simple Database** is a database created for educational purpose. It is designed to provide a clear understanding of fundamental database concepts through SQL. This Database helps explore the principles of Database Management System (DBMS) in a hands-on manner.

## Table of Contents

- [Overview](#overview)
- [Tables](#tables) 
- [Getting Started](#getting-started)
- [Installation](#installation)
- [Contributing](#contributing)

## Overview

**db**, a database, has been crafted with educational goals in mind. Its purpose is to facilitate a comprehensive grasp of essential database concepts via SQL. This database system offers a hands-on opportunity to delve into the fundamentals of Database Management Systems (DBMS) and explore the principles of database management

## Tables

###Table Structure 

Sailor-
1.     SID             -int(11), Not NULL, Primary Key
2.     SNAME           -varchar(20)
3.     RATING          -int 
4.     AGE             -int(3)

Boats-      
1.     BID             -int(11), Not NULL, Primary Key
2.     BNAME           -varchar(20)
3.     COLOR           -varchar(10)

Reserves-
1.     SID             -int(11), Not NULL, Primary Key
2.     BID             -int(11), Not NULL, Primary Key
3.     Date            -date

###Table Creation:

Sailor       -        Create table Sailor (SID int(11) primary key , SNAME varchar(20), RATING int, AGE int(3));

Boats        -        Create table Boats (BID int(11) primary key , BNAME varchar(20), COLOR varchar(10));

Reserves     -        Create table Reserves (SID int(11) primary key, BID int(11) primary key, Date date);

## Getting Started

"The queries included in this project are written in SQL, and it's beneficial to have a foundational knowledge of SQL Query language. This includes understanding how SQL queries function, familiarity with essential commands, and basic concepts."


Some of the resources from where you can learn about MySQL are :
MySQL Reference Manual : `https://dev.mysql.com/doc/refman/8.0/en/tutorial.html`
W3Schools : `https://www.w3schools.com/MySQL/default.asp`
Javatpoint : `https://www.javatpoint.com/mysql-tutorial`

## Installation

**MySQL:** **db** utilizes MySQL as the underlying database engine. Make sure you have MySQL installed and running on your system. If not, you can download and install MySQL from the official [MySQL website](https://dev.mysql.com/downloads/). 

## Contributing

We welcome contributions from the community to help enhance the queries and make the SQL queries more efficient and effective. If you're interested in contributing, here's how you can get involved:

### Submitting Contributions

To submit contributions to improve SQL queries or enhance query efficiency:

1. **Fork the Repository:** Fork the **Your DBMS Name** repository to your GitHub account.

2. **Create a Branch:** Create a new branch in your forked repository for your changes. Name the branch descriptively (e.g., `query-optimization`).

3. **Make Changes:** Make your SQL query improvements and optimizations in this branch.

4. **Testing:** Test your changes thoroughly to ensure they don't introduce any issues.

5. **Commit:** Commit your changes with clear and concise commit messages explaining the purpose of each change.

6. **Push:** Push your branch to your GitHub repository.

7. **Pull Request:** Create a pull request from your branch to the main repository's `main` branch. Provide a detailed description of your changes and the improvements you've made.

8. **Review:** Your pull request will undergo review by us. Feedback and suggestions may be provided to refine your changes.

9. **Merge:** Once your changes are approved, they will be merged into the main repository.

