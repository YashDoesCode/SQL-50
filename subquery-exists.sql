-- Find departments that currently have no assigned employees
CREATE TABLE dept (
  id INT,
  dname TEXT
);

CREATE TABLE emp (
  id INT,
  d_id INT
);

INSERT INTO dept VALUES (1, 'Eng'), (2, 'HR'), (3, 'Legal');
INSERT INTO emp VALUES (101, 1), (102, 1), (103, 2);

SELECT d.dname FROM dept d WHERE NOT EXISTS (SELECT 1 FROM emp e WHERE e.d_id = d.id);
