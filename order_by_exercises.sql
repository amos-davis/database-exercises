USE employees;
show table;

SELECT *
FROM employees
-- WHERE first_name IN ('Irena', 'Vidya', 'Maya');
WHERE (first_name = 'Irena'
  OR first_name = 'Vidya'
  OR first_name = 'Maya')
    AND gender = 'M'
    ORDER BY first_name;


SELECT *
FROM employees
WHERE (first_name = 'Irena'
  OR first_name = 'Vidya'
  OR first_name = 'Maya')
    AND gender = 'M'
--     ORDER BY first_name, last_name;
    ORDER BY last_name, first_name DESC;


SELECT *
FROM employees
-- WHERE last_name LIKE 'E%';
-- WHERE last_name LIKE 'E%' OR last_name LIKE '%e';
WHERE last_name LIKE 'E%e';
  ORDER BY emp_no DESC;


SELECT *
FROM employees
WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;
