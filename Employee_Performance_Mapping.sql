###Create a database named employee, then import data_science_team.csv proj_table.csv and emp_record_table.csv into the employee database from the given resources.
create database employee
use employee


#### Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, and DEPARTMENT from the employee record table, and make a list of employees and details of their department
select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT
from emp_record_table
select FIRST_NAME, LAST_NAME,DEPT,ROLE from emp_record_table

##SELECT emp_record_table.FIRST_NAME,emp_record_table.LAST_NAME,emp_record_table.DEPT,proj_table.DOMAIN,emp_record_table.ROLE
##FROM emp_record_table
##INNER JOIN proj_table ON emp_record_table.domain =data_science_team.country;

##Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPARTMENT, and EMP_RATING if the EMP_RATING is: less than two,greater than four 
#between ,two and four
select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT, EMP_RATING from c where EMP_RATING<2;
select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT, EMP_RATING from emp_record_table where EMP_RATING>4;
select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT, EMP_RATING from emp_record_table where EMP_RATING>2 and EMP_RATING<4 ;

###Write a query to concatenate the FIRST_NAME and the LAST_NAME of employees in the Finance department from the employee table and then give the resultant column alias as NAME.
select FIRST_NAME,LAST_NAME from emp_record_table where DEPT='FINANCE'
 SELECT *, CONCAT(FIRST_NAME, ' ', LAST_NAME) AS NAME FROM `name`;
 
 
 ##Write a query to list only those employees who have someone reporting to them. Also, show the number of reporters (including the President).
 select first_name,last_name,ROLE from emp_record_table where( role= 'LEAD DATA SCIENTIST')OR role=('MANAGER') or (role='PRESIDENT') ;
 SELECT DISTINCT ROLE FROM reporters;
 
 ###Write a query to list down all the employees from the healthcare and finance departments using union. Take data from the employee record table.
 SELECT first_name,last_name ,DEPT FROM emp_record_table where dept='HEALTHCARE' OR dept='FINANCE'
 
 SELECT first_name,last_name ,DEPT FROM emp_record_table where dept='HEALTHCARE' UNION  SELECT first_name,last_name ,DEPT FROM emp_record_table where dept='FINANCE'
 ####Write a query to list down employee details such as EMP_ID, FIRST_NAME, LAST_NAME, ROLE, DEPARTMENT, and EMP_RATING grouped by dept. Also include the respective employee rating along with the max emp rating for the department.

SELECT DEPT, FIRST_NAME,MAX(EMP_RATING)
 from emp_record_table 
 group by DEPT;