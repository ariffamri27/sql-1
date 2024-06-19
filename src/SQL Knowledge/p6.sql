SELECT name, position
FROM employees
WHERE salary > 50000;


BONUS:
SELECT name, position, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;
