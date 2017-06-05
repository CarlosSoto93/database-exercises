USE employees;

# write a query that shows each department along with the name of the current manager for that department.
SELECT
  d.dept_name AS 'Department Name',
  CONCAT(e.first_name, ' ', e.last_name) AS 'Department Name'
FROM departments AS d
JOIN dept_manager AS dm ON d.dept_no=dm.dept_no
JOIN employees AS e ON dm.emp_no=e.emp_no
WHERE dm.to_date > now()
ORDER BY d.dept_name;

# Find the name of all departments currently managed by women.
SELECT
  d.dept_name AS 'Department Name',
  CONCAT(e.first_name, ' ', e.last_name) AS  'Manager Name'
FROM departments AS d
JOIN dept_manager AS dm ON d.dept_no=dm.dept_no
JOIN employees AS e ON dm.emp_no=e.emp_no
WHERE dm.to_date > now() AND e.gender = 'F'
ORDER BY d.dept_name;

# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS Title, COUNT(*) AS Count
FROM titles AS t
JOIN employees AS e ON t.emp_no = e.emp_no
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE t.to_date > now()
  AND de.to_date > now()
  AND d.dept_name = 'Customer Service'
GROUP BY t.title;

# Find the current salary of all current managers.
SELECT
  dept_name AS 'Department Name',
  CONCAT(first_name, ' ', last_name) AS 'Name',
  salary AS Salary
FROM salaries AS s
JOIN employees AS e ON s.emp_no = e.emp_no
JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
JOIN departments AS d ON dm.dept_no = d.dept_no
WHERE s.to_date > now()
AND dm.to_date > now()
ORDER BY d.dept_name;