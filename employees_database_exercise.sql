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