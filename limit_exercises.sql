USE employees;

SELECT last_name
FROM employees
GROUP BY last_name DESC
LIMIT 10;