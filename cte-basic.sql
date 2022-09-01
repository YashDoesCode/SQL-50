-- Calculate average departmental spend using a Common Table Expression
CREATE TABLE emp (
  id INT,
  dept TEXT,
  sal INT
);

INSERT INTO emp VALUES
(1, 'Eng', 90000),
(2, 'Eng', 80000),
(3, 'Sales', 50000),
(4, 'Sales', 60000);

WITH dept_tot AS (
  SELECT dept, SUM(sal) AS tot FROM emp GROUP BY dept
)
SELECT AVG(tot) AS avg_dept_tot FROM dept_tot;
