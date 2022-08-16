-- Select all employees belonging to departments located in New York
CREATE TABLE dept (
  id INT,
  loc TEXT
);

CREATE TABLE emp (
  id INT,
  n TEXT,
  d_id INT
);

INSERT INTO dept VALUES (1, 'New York'), (2, 'London'), (3, 'New York');
INSERT INTO emp VALUES (10, 'Alice', 1), (11, 'Bob', 2), (12, 'Charlie', 3);

SELECT n FROM emp WHERE d_id IN (SELECT id FROM dept WHERE loc = 'New York');
