Use employees;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments as d
JOIN dept_manager as dm
  ON dm.dept_no = d.dept_no
JOIN employees as e
  ON e.emp_no = dm.emp_no
  WHERE dm.to_date > NOW()
  order by d.dept_name;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
JOIN dept_manager AS dm
ON dm.dept_no = d.dept_no
JOIN employees AS e
  ON e.emp_no = dm.emp_no
  WHERE dm.to_date > NOW()
AND e.gender = 'F'
  order by d.dept_name;


select t.title AS 'Title',
count(t.title) AS 'COUNT'
from titles AS t
  join dept_emp AS de
  ON de.emp_no = t.emp_no
where de.dept_no = 'd009'
  AND t.to_date > now()
  AND de.to_date > now()
  group by t.title;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Name', s.salary AS 'Salary'
FROM departments AS d
  JOIN dept_manager as dm
   ON dm.dept_no = d.dept_no
  JOIN employees e
    ON e.emp_no = dm.emp_no
  JOIN salaries s
    ON s.emp_no = e.emp_no
  WHERE dm.to_date > NOW()
  AND s.to_date > now()
  ORDER By d.dept_name;