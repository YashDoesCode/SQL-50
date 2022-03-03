-- Select names and salaries of employees in sales department
CREATE TABLE emp (
  id INT,
  n TEXT,
  sal INT,
  dept TEXT
);

INSERT INTO emp VALUES
(1, 'Alice', 60000, 'Sales'),
(2, 'Bob', 50000, 'Marketing'),
(3, 'Charlie', 70000, 'Sales');

SELECT n, sal FROM emp WHERE dept = 'Sales';
