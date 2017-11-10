# MySQL

## Context

In order to become a good DBA it’s necessary to show your skills with databases and MySQL. For this lab, you will build:
  + a database with tables
  + insert data
  + create relations
  + extract and format data

## Objectives

### Learning Objectives

After completing this assignment you should be able to:

  + Use MySQL and connect to a server
  + Create and use databases
  + Create, clean and delete tables
  + Alter table structures
  + Insert information taking care about no duplicate information
  + Create relations between tables
  + Retrieve information using queries inside queries (subqueries)
  + Extract and format data
  + Show related information using JOINs

### Performant Objectives

  + Simple and indented queries
  + Understand basic functions and extra features on MySQL

### Deliverables

  + a github repository with two files:
    + `README.md` with all questions listed.
    + an `.sql` file with questions and solution for each one

---

## Questions

### Section I. Create Database and Tables

+ Create a database called `JS09_MessagesBy_YOURNAME`, with two tables:
  + Users *(structure)*:
    + `User_Id`, make it *auto increment* and *primary key*.
    + `Username`, length of 50.
    + `Password`, length of 41, user `CHAR` MySQL Data Type.
  + Messages
    + `Message_Id`, should be *auto_increment* and *primary_key*.
    + `User_Id`, the foreign key from `Users` table.
    + `Content`, user `TEXT` MySQL Data Type.
    + `Created_At`, use `TIMESTAMP` Data Type, and add a default value of the current time that it’s created.

###### You make sure to read about `CURRENT_TIMESTAMP` helper.

### Section II. Basic Operations.

+ Insert two users:
  + User 1:
    + Username: `tapeface`
    + Password: `tapeface`. Make sure to encrypt the content using `PASSWORD` native function.
  + User 2:
    + Username: `butterface`
    + Password: `butterface`. Make sure to encrypt the content using `PASSWORD` native function.
+ Save the next three messages:
  + Message 1
    + Username: `typeface`
    + Content: `How is it going my friend!?`
    + Date: `2017-09-10 23:45:12`
  + Message 2
    + Username: `typeface`
    + Content: `Are u there?`
    + Date: `2017-09-10 23:55:25`
  + Message 3
    + Username: `butterface`
    + Content: `I’m here! Really cool. How about you man? Tell me something.`
    + Date: `2017-09-11 00:20:33`

### Section III. Get information

##### Use `HR` database

+ Write a query to get the department name (`Departments.DEPARTMENT_NAME`) and number of employees (`COUNT`) in each department.
+ Write a query to find the employee ID (`Employees.EMPLOYEE_ID`), job title (`Jobs.JOB_TITLE`), number of days between ending date and starting date (`JobsHistory.END_DATE - JobsHistory.START_DATE`) for all jobs in department 90 (`DEPARTMENT_ID`) from job history (`JobsHistory`).
+ Write a query to display the department name (`Departments.DEPARTMENT_NAME`), manager name (`Employees.FIRST_NAME`), and city (`Locations.CITY`).
+ Write a query to display the job title (`Jobs.JOBS_TITLE`) and average salary (`Employees.SALARY`) of employees.
+ Write a query to display the job history (`JobsHistory`) that were done by any employee (`Employees`) who is currently earning more than 10000 of salary (`Employees.SALARY`).

## Additional Instructions

#### Access to MySQL Remote Server

##### URL

```
45.55.135.14/phpmyadmin
```

##### Log In

```sql
-u root
-p root
```
