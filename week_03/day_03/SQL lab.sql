-- MVP
-- Q1
-- How many employee records are lacking both a grade and salary?

SELECT *
FROM employees 
WHERE salary IS NULL AND grade IS NULL;   

=> Answer = 2

----------------------
-- Q2
-- Produce a table with the two following fields (columns):
-- - the department
-- - the employees full name (first and last name)
-- Order resulting table alphabetically by dept and then by last name.     
   
SELECT 
	department,
	first_name,
	last_name
FROM employees
ORDER BY department, last_name;  

--------------------------
-- Q3 
-- Find the details of the top ten highest paid employees who have a last_name beginning with 'A'.

SELECT *
FROM employees 
WHERE last_name LIKE 'A%'
LIMIT 10;

-----------------------------
-- Q4
-- Obtain a count by `department` of the employees who started work with the corporation in 2003.  

SELECT 
	count(id), 
	department  
FROM employees 
WHERE start_date BETWEEN '2003-01-01' AND '2003-12-31' 
GROUP BY department

-------------------------
-- Q5
-- Obtain a table showing `department`, `fte_hours,` and the number of employees in each department
-- who work each `fte_hours` pattern. 
-- Order the table alphabetically by `department`, and then in ascending order of `fte_hours`.
 
SELECT  
	count(id)
	fte_hours,
	e.department
FROM employees AS e 
WHERE fte_hours BETWEEN '0.25' AND '1'
GROUP BY e.department, fte_hours  
ORDER BY fte_hours, e.department;  

--NB ^ NOT CORRECT - closest I could get 

--------------------------
-- Q6
-- Provide a breakdown of the 
-- numbers of employees
-- enrolled, not enrolled, and with unknown enrollment status 
-- in the corporation pension scheme.

SELECT 
	count(id)
FROM employees AS e 
WHERE e.pension_enrol IS TRUE 
	  
	

		 





