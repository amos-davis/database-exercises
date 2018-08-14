USE employees;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'Z%'
ORDER By last_name DESC
LIMIT 10;

SELECT first_name, last_name
FROM employees
WHERE (hire_date LIKE '199%')
AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5;

SELECT first_name, last_name
FROM employees
WHERE (hire_date LIKE '199%')
AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5 OFFSET 45;
--TO get to 6th page, formula for OFFSET is (page# * limit# - limit#)---
