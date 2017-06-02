USE employees;

SELECT CONCAT(count(*), ' ', gender)
FROM employees
WHERE first_name IN ( 'Irena', 'Vidya', 'Maya')
      GROUP BY gender;

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
      OR last_name LIKE '%e'
ORDER BY emp_no DESC;

SELECT concat(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%e';

SELECT concat(
    first_name,
    ' ',
    last_name,
    ' has been working at the company for ',
    (datediff(curdate(), hire_date)),
  ' days')
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
      AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC;

SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT count(*),first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
      AND last_name NOT LIKE '%qu%'
GROUP BY first_name, last_name
ORDER BY count(*) DESC;