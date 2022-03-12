-- Find active employees in engineering or product with salary at least 60000
CREATE TABLE emp (
  id INT,
  n TEXT,
  dept TEXT,
  sal INT,
  act INT
);

INSERT INTO emp VALUES
(1, 'Alice', 'Eng', 80000, 1),
(2, 'Bob', 'Eng', 55000, 1),
(3, 'Charlie', 'Prod', 75000, 1),
(4, 'Dave', 'HR', 65000, 0);

SELECT n, dept, sal FROM emp WHERE act = 1 AND (dept = 'Eng' OR dept = 'Prod') AND sal >= 60000;
