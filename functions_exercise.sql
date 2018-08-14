USE employees;


------Code below is for the Functions exercise-----

-----concat() function usage-----
SELECT CONCAT(
first_name, ' ', last_name
) from employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%e';
  ORDER BY emp_no DESC;
-- WHERE last_name LIKE 'E%';
-- WHERE last_name LIKE 'E%e';


-----Using DateDiff to figure out how many days an employee has worked at a company---
SELECT DATEDIFF(curdate(),hire_date)
FROM employees
WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5;


---DateDiff() function with concat() function---
SELECT concat(first_name, ' ', last_name, ' has worked at my company for ',
DATEDIFF(curdate(),hire_date), ' days now.' )
from employees
WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC
 LIMIT 8;
