-- Find the second highest salary from the emp table
CREATE TABLE emp (
  id INT,
  sal INT
);

INSERT INTO emp VALUES
(1, 100),
(2, 200),
(3, 300),
(4, 200);

WITH r AS (
  SELECT sal, DENSE_RANK() OVER (ORDER BY sal DESC) AS rnk FROM emp
)
SELECT sal FROM r WHERE rnk = 2 LIMIT 1;
