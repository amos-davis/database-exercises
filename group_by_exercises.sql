Use employees;

SELECT DISTINCT title
from titles;


SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' And last_name LIKE '%e'
GROUP By last_name;


  ---Do not use DISTINCT and GROUP in same query. They perform similarly, so it's repetitive--
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' And last_name LIKE '%e'
GROUP By first_name, last_name;


SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name


SELECT COUNT(last_name)
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
ORDER BY last_name;



SELECT gender, COUNT(*)
FROM employees
WHERE first_name = 'Irena'
  OR first_name = 'Vidya'
  OR first_name = 'Maya'
    GROUP BY gender;


