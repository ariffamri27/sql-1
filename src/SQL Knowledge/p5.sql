SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;



BONUS:
WITH ranked_salaries AS (
    SELECT 
        department,
        name,
        salary,
        ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS rank_num
    FROM employees
)
SELECT department, name, salary
FROM ranked_salaries
WHERE rank_num = 1;
