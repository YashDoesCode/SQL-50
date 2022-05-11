-- List departments with more than two employees
CREATE TABLE emp (
  id INT,
  n TEXT,
  dept TEXT
);

INSERT INTO emp VALUES
(1, 'Alice', 'Eng'),
(2, 'Bob', 'Eng'),
(3, 'Charlie', 'Eng'),
(4, 'Dave', 'Sales'),
(5, 'Eve', 'Sales');

SELECT dept, COUNT(*) AS cnt FROM emp GROUP BY dept HAVING COUNT(*) > 2;
