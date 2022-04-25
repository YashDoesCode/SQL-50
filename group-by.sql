-- Calculate employee headcount and total salary per department
CREATE TABLE emp (
  id INT,
  n TEXT,
  dept TEXT,
  sal INT
);

INSERT INTO emp VALUES
(1, 'Alice', 'Eng', 80000),
(2, 'Bob', 'Eng', 75000),
(3, 'Charlie', 'HR', 60000),
(4, 'Dave', 'Sales', 50000);

SELECT dept, COUNT(*) AS cnt, SUM(sal) AS tot_sal FROM emp GROUP BY dept;
