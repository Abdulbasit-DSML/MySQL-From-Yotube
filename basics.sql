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

-- WHERE clause
-- used when we have to apply specific conditions 
SELECT *
FROM employee_salary
WHERE salary > 50000;
SELECT DISTINCT department_id
FROM employee_salary;



