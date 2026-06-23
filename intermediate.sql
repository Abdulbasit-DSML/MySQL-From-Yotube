-- Case Statements
-- A Case Statement allows you to add logic to your Select Statement

SELECT first_name, 
last_name, 
CASE
	WHEN age <= 30 THEN 'Young'
END
FROM employee_demographics;

-- Pawnee Council sent out a memo of their bonus and pay increase structure so we need to follow it
-- Basically if they make less than 45k then they get a 5% raise - very generous
-- if they make more than 45k they get a 7% raise
-- they get a bonus of 10% if they work for the Finance Department

SELECT first_name, last_name, salary,
CASE
	WHEN salary > 45000 THEN salary + (salary * 0.05)
    WHEN salary < 45000 THEN salary + (salary * 0.07)
END AS new_salary
FROM employee_salary;

-- Multiple case statement

SELECT first_name, last_name, salary,
CASE
	WHEN salary > 45000 THEN salary + (salary * 0.05)
    WHEN salary < 45000 THEN salary + (salary * 0.07)
END AS new_salary,
CASE
	WHEN dept_id = 6 THEN salary * .10
END AS Bonus
FROM employee_salary;

-- Joins
-- joins allow you to combine 2 tables together (or more) if they have a common column.
-- doesn't mean they need the same column name, but the data in it are the same and can be used to join the tables together
-- Creating a JOIN
SELECT *
FROM employee_demographics
JOIN employee_salary
	ON employee_demographics.employee_id = employee_salary.employee_id;


-- use aliasing!
SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;


-- left JOIN
-- a left join will take everything from the left table even if there is no match in the join, but will only return matches from the right table
SELECT *
FROM employee_salary sal
LEFT JOIN employee_demographics dem
	ON dem.employee_id = sal.employee_id;

-- Right JOIN Vicecersa of leftjoin
SELECT *
FROM employee_salary sal
RIGHT JOIN employee_demographics dem
	ON dem.employee_id = sal.employee_id;

-- Self Join
-- a self join is where you tie a table to itself
SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id = emp2.employee_id;


SELECT emp1.employee_id as emp_santa, emp1.first_name as santa_first_name, emp1.last_name as santa_last_name, emp2.employee_id, emp2.first_name, emp2.last_name
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1  = emp2.employee_id;

-- Joining multiple tables
SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
JOIN parks_departments dept
	ON dept.department_id = sal.dept_id;

-- String Functions

-- Length Function
SELECT first_name, LENGTH(first_name) 
FROM employee_demographics;
-- Outputs the length of first name

-- Upper function
SELECT first_name, UPPER(first_name) 
FROM employee_demographics;
-- Outputs the first name in upper case

-- Lower function
SELECT first_name, LOWER(first_name) 
FROM employee_demographics;
-- Outputs the first name in lower case

-- Trim functions (used to remove spaces)

SELECT TRIM("   sql")
-- There's also L trim for trimming just the left side
SELECT LTRIM('     I love SQL');

-- There's also R trim for trimming just the Right side
SELECT RTRIM('I love SQL    ');

-- left & Right functions(used to extract data)
SELECT first_name, LEFT(first_name,4) 
FROM employee_demographics;
-- Outputs first 4 character from left side

SELECT first_name, RIGHT(first_name,4) 
FROM employee_demographics;
-- Outputs first 4 character from Right side

-- SUBSTRING function
SELECT birth_date, SUBSTRING(birth_date,1,4) as birth_year
FROM employee_demographics;

-- Locate function
SELECT LOCATE('x', 'Alexander');

-- Let's try it on our first name
SELECT first_name, LOCATE('a',first_name) 
FROM employee_demographics;

-- Here we can combine the first and the last name columns together
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employee_demographics;
-- Output the year extract from date eg. 2006/07/12

-- Replace Function
SELECT REPLACE(first_name,'a','z')
FROM employee_demographics;

-- Subquries
SELECT *
FROM employee_demographics
WHERE employee_id IN 
			(SELECT employee_id
				FROM employee_salary
                WHERE dept_id = 1);
                












