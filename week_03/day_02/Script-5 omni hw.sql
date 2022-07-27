2022-07-26 SQL HW Submission

-- MVP
-- Q1
-- a) Find the first name, last name and team name of employees who are members of teams.

SELECT e.first_name,
	   e.last_name,
	   t.name
FROM employees e
INNER JOIN teams t ON e.team_id = t.id 

-- b) Find the first name, last name and team name of employees
--   who are members of teams and are enrolled in the pension scheme.

SELECT e.first_name,
	   e.last_name,
	   t.name
FROM employees e  
WHERE e.pension_enrol = TRUE
INNER JOIN teams t AS t ON e.team_id = t.id

-- c)Find the first name, last name and team name of employees who are members of teams,
--   where their team has a charge cost greater than 80.

SELECT e.first_name
	   e.last_name 
	   t.name
FROM employees e 
INNER JOIN 'teams' t AS t ON e.team_id = t.id AND 't.charge_cost' > '80'

-----
-- MVP
-- Q2
-- a)Get a table of all employees details,
--  together with their local_account_no and local_sort_code, if they have them.
    
CREATE TABLE public.employees (
			id int4 PRIMARY KEY
			first_name
			last_name
			email
			department varchar(50) 
			team_id int4 
			grade int4
			country varchar(50),
			fte_hours numeric(3, 2),
			pension_enrol bool,
			salary int4,
			pay_detail_id int4,
			start_date date
)

CREATE TABLE pay_details (
			id int4 PRIMARY KEY	
			local_account_no
			local_sort_code
)
LEFT JOIN pay_details pd ON employees e 
);


CREATE TABLE public.employees (
	id int4 PRIMARY.key
	first_name varchar(50) 
	last_name varchar(50) 
	email varchar(50) 
	department varchar(50) 
	team_id int4 
	grade int4
	country varchar(50),
	fte_hours numeric(3, 2),
	pension_enrol bool,
	salary int4,
	pay_detail_id int4,
	start_date date)
	pay_details local_account_number varchar, local_sort_code varchar,
	LEFT JOIN pay_details pd ON employees e 
);

--- got stuck on this Q and the other table ones -- 
- I really intended to finish but this much took 3 hours after tha lab