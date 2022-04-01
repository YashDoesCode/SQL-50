-- Get top two highest paid employees skipping the highest earner
CREATE TABLE emp (
  id INT,
  n TEXT,
  sal INT
);

INSERT INTO emp VALUES
(1, 'Alice', 95000),
(2, 'Bob', 80000),
(3, 'Charlie', 75000),
(4, 'Dave', 60000);

SELECT n, sal FROM emp ORDER BY sal DESC LIMIT 2 OFFSET 1;
