SELECT * FROM employee;

SELECT * FROM employee
WHERE ID  BETWEEN 1001 AND 1008;

CREATE TABLE employees1 AS 
SELECT * FROM employee
WHERE ID  BETWEEN 1001 AND 1008
GROUP BY CITY;

select * from employees1;


SELECT * FROM employees1
GROUP BY CITY
ORDER BY ID;

SELECT Department, SUM(Salary) as TotalSalary FROM Employee GROUP BY Department;

SELECT GENDER, COUNT(ID)  FROM employees1 GROUP BY GENDER;


SELECT CITY, COUNT(ID) AS Total_Employees FROM employees1 GROUP BY CITY;


SELECT * FROM EMPLOYEES;

SELECT DEPARTMENT, SUM(SALARY) AS TOTAL_MONEY FROM EMPLOYEES 
WHERE ID BETWEEN 1 AND 5
GROUP BY DEPARTMENT;









