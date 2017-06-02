USE employees;

SELECT count(*), gender
FROM employees
WHERE first_name IN ( 'Irena', 'Vidya', 'Maya')
      GROUP BY gender;

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%e'
ORDER BY emp_no DESC;

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%e';

SELECT
  concat(first_name,' ',last_name) AS 'full name',
  datediff(curdate(), hire_date) AS 'Days working at the company'
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC;

SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT concat(first_name,' ', last_name) AS 'full name', count(*)
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY concat(first_name,' ', last_name)
ORDER BY count(*) DESC;