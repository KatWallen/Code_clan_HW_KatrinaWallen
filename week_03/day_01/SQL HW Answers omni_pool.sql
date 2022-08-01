< SQL HW Answers 2022_07/25 >

/* MVP */
/* Q1 */ -- Find all the employees who work in the 'Human Resources' department.

SELECT *                             
FROM employees                       
WHERE department = 'Human Resources' 

-----

/* MVP */
/* Q2 */ -- Get the `first_name`, `last_name`, and `country` of the employees who work in the 'Legal' `department`.

SELECT
	   first_name,
	   last_name,
	   country
WHERE department = 'Legal'

-----
/* MVP */
/* Q3 */ -- Count the number of employees based in Portugal.

SELECT
FROM employees
WHERE country = ('Portugal')
COUNT(*) IS country

-----
/* MVP */
/* Q4 */ -- Count the number of employees based in either Portugal or Spain.

SELECT 
FROM employees
WHERE country_based = ('Portugal') OR country_based = ('Spain') 
COUNT(*) AS country_based 

-----
/* MVP */
/* Q5 */ -- Count the number of pay_details records lacking a `local_account_no`.
         -- Run a query first to get some records in the `pay_details` table, just to see what the data looks like

SELECT
	id,
	local_account_no
FROM pay_details
COUNT(*) WHERE local_account_no IS NULL

------
/* MVP */
/* Q6 */ -- Are there any pay_details records lacking both a `local_account_no` and `iban` number?
SELECT
FROM pay_details
WHERE local_account_no ISNULL AND iban ISNULL

-- End - this was all I had time to do.




2022-07-26
--Q17
select 
first_name,
last_name,
department,
start_date,
concat(first_name, ' ', last_name)
FROM employees;
WHERE start_date IS NOT null


--Scratchpad
SELECT EXTRACT month FROM NOW())
to CHAR NOW, ('MON')

------
/* Q18 */

select first_name,
		last_name,
case 
	when salary <40000 then 'low'
	when salary >=40000 then 'high'
	-- else 'unknown'
	when salary 


