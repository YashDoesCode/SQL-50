-- List employees sorted by department ascending and salary descending
CREATE TABLE emp (
  id INT,
  n TEXT,
  dept TEXT,
  sal INT
);

INSERT INTO emp VALUES
(1, 'Alice', 'Eng', 70000),
(2, 'Bob', 'Sales', 50000),
(3, 'Charlie', 'Eng', 90000),
(4, 'Dave', 'Sales', 65000);

SELECT n, dept, sal FROM emp ORDER BY dept ASC, sal DESC;
