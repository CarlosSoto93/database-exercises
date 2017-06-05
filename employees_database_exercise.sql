USE employees;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS 'full name'
FROM departments AS d
JOIN dept_manager AS dm ON d.dept_no=dm.dept_no
JOIN employees AS e ON dm.emp_no=e.emp_no
WHERE dm.to_date LIKE '9999%'
ORDER BY d.dept_name;