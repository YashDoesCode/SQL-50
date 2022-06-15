-- Return all departments and their assigned employees including empty departments
CREATE TABLE dept (
  id INT,
  dname TEXT
);

CREATE TABLE emp (
  id INT,
  n TEXT,
  d_id INT
);

INSERT INTO dept VALUES (1, 'Sales'), (2, 'Ops'), (3, 'Legal');
INSERT INTO emp VALUES (10, 'Alice', 1), (11, 'Bob', 1);

SELECT d.dname, e.n FROM dept d LEFT JOIN emp e ON d.id = e.d_id;
