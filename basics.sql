-- SELECT STATEMENET
SELECT * 
FROM parks_and_recreation.employee_demographics;

-- selecting a specific column
SELECT first_name
FROM employee_demographics;

-- Adding more columns
SELECT last_name, first_name, gender, age
FROM employee_demographics;

-- Calculations using colmuns
-- You can see here we have the total_money_spent we can perform calculations on this
SELECT first_name,
 last_name,
 total_money_spent,
 total_money_spent + 100
FROM customers;

-- PEMDAS rules
SELECT first_name, 
last_name,
salary,
(salary + 100) * 10
FROM employee_salary;

-- How to get Distinct or Non-Duplicates value
SELECT department_id
FROM employee_salary;

SELECT DISTINCT department_id
FROM employee_salary;

-- WHERE clause
-- used when we have to apply specific conditions 
SELECT *
FROM employee_salary
WHERE salary > 50000;
-- Outputs records having salary more than 50000

SELECT *
FROM employee_demographics
WHERE gender = 'Female';
-- Outputs records with female gender


SELECT *
FROM employee_demographics
WHERE gender != 'Female';
-- Outputs records with male "not equal to representation"

-- We can use WHERE clause with date value also
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01';

-- LIKE STATEMENT
-- two special characters a % and a _
-- % means anything




