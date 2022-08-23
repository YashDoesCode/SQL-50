-- Find employees whose salary is above the average salary of their own department
CREATE TABLE emp (
  id INT,
  n TEXT,
  dept TEXT,
  sal INT
);

INSERT INTO emp VALUES
(1, 'Alice', 'Eng', 85000),
(2, 'Bob', 'Eng', 75000),
(3, 'Charlie', 'Sales', 50000),
(4, 'Dave', 'Sales', 65000);

SELECT e.n, e.dept, e.sal FROM emp e WHERE e.sal > (SELECT AVG(s.sal) FROM emp s WHERE s.dept = e.dept);
