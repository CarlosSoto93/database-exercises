USE employees;

# Find all the employees with the same hire date as employee 101010 using a sub-query.
# SELECT
#   emp_no,
#   CONCAT(first_name, ' ', last_name) AS Employee,
#   hire_date
# FROM employees
# WHERE hire_date IN (
#   SELECT hire_date
#   FROM employees
#   WHERE emp_no = 101010
# );

# Find all the titles held by all employees with the first name Aamod.
# SELECT title
# FROM titles
# WHERE emp_no IN (
#   SELECT emp_no
#   FROM employees
#   WHERE first_name = 'Aamod'
# )
# GROUP BY title;

# Find all the department managers that are female.
SELECT
  CONCAT(first_name, ' ', last_name) AS 'Department Managers',
  gender
FROM employees
WHERE gender = 'F'
AND emp_no IN (
  SELECT emp_no
  FROM dept_manager
);

# BONUS Find all the department names that have female managers.