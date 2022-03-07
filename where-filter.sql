-- Find employees with salary greater than 55000
CREATE TABLE emp (
  id INT,
  n TEXT,
  sal INT
);

INSERT INTO emp VALUES
(1, 'Alice', 60000),
(2, 'Bob', 50000),
(3, 'Charlie', 70000);

SELECT * FROM emp WHERE sal > 55000;
