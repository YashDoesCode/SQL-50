-- Combine employees and departments keeping records unmatched on either side
CREATE TABLE dept (
  id INT,
  dname TEXT
);

CREATE TABLE emp (
  id INT,
  n TEXT,
  d_id INT
);

INSERT INTO dept VALUES (1, 'Marketing'), (2, 'Finance');
INSERT INTO emp VALUES (10, 'Alice', 1), (11, 'Bob', 3);

SELECT e.n, d.dname FROM emp e FULL OUTER JOIN dept d ON e.d_id = d.id;
