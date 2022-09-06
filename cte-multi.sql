-- Pipeline multiple CTEs to find departments spending above the department average
CREATE TABLE emp (
  id INT,
  dept TEXT,
  sal INT
);

INSERT INTO emp VALUES
(1, 'Eng', 100000),
(2, 'Eng', 80000),
(3, 'Sales', 50000),
(4, 'HR', 40000);

WITH d_sum AS (
  SELECT dept, SUM(sal) AS tot FROM emp GROUP BY dept
),
d_avg AS (
  SELECT AVG(tot) AS threshold FROM d_sum
)
SELECT d.dept, d.tot FROM d_sum d, d_avg a WHERE d.tot > a.threshold;
