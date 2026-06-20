-- Case Statements
-- A Case Statement allows you to add logic to your Select Statement

SELECT first_name, 
last_name, 
CASE
	WHEN age <= 30 THEN 'Young'
END
FROM employee_demographics;
