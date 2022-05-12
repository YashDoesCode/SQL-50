-- Find departments with average salary exceeding 60000 and total payroll above 150000
CREATE TABLE emp (
  id INT,
  dept TEXT,
  sal INT
);

INSERT INTO emp VALUES
(1, 'Eng', 80000),
(2, 'Eng', 90000),
(3, 'Sales', 50000),
(4, 'Sales', 40000),
(5, 'HR', 65000);

SELECT dept, AVG(sal) AS avg_s, SUM(sal) AS tot_s FROM emp GROUP BY dept HAVING AVG(sal) > 60000 AND SUM(sal) > 150000;
