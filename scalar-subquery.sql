-- Find employees who earn strictly above the company average salary
CREATE TABLE emp (
  id INT,
  n TEXT,
  sal INT
);

INSERT INTO emp VALUES
(1, 'Alice', 60000),
(2, 'Bob', 80000),
(3, 'Charlie', 40000),
(4, 'Dave', 90000);

SELECT n, sal FROM emp WHERE sal > (SELECT AVG(sal) FROM emp);
