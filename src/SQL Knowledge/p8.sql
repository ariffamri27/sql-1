Composite Index on (department, salary):

CREATE INDEX idx_department_salary ON employees (department, salary);

/*REASONING:
The composite index on `(department, salary)` is optimized for the query `SELECT * FROM employees WHERE department = 'Sales' AND salary > 50000` 
due to its efficient handling of selective filters and range scans. By placing `department` first in the index, the database can swiftly identify
and retrieve rows associated with the 'Sales' department. This initial filtering significantly reduces the dataset that needs further evaluation 
for the salary condition. Subsequently, the index's ability to support efficient range scans on `salary` ensures quick verification of the salary 
threshold. This approach minimizes the need for exhaustive table scans, leading to improved query performance by focusing operations on relevant 
data subsets.


TRADE-OFFS AND DRAWBACKS:
Implementing a composite index on `(department, salary)` provides performance benefits but comes with trade-offs. Firstly, it increases storage 
space consumption compared to a single-column index due to indexing two columns together. Secondly, write operations such as inserts, updates, 
and deletes on the `employees` table may experience slight delays because each modification needs to update the index as well. However, modern 
database systems are designed to optimize these operations to minimize the impact. Regular index maintenance is essential to ensure indexes remain
 efficient, requiring monitoring for fragmentation and periodic rebuilding or reorganizing as needed. Lastly, caution must be exercised to avoid 
 over-indexing, as adding excessive indexes can introduce unnecessary storage and maintenance overhead without proportionate gains in query 
 performance.*/