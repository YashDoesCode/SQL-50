-- List employee names with their matching department names
CREATE TABLE dept (
  id INT,
  dname TEXT
);

CREATE TABLE emp (
  id INT,
  n TEXT,
  d_id INT
);

INSERT INTO dept VALUES (1, 'Engineering'), (2, 'Design');
INSERT INTO emp VALUES (10, 'Alice', 1), (11, 'Bob', 2), (12, 'Charlie', 3);

SELECT e.n, d.dname FROM emp e INNER JOIN dept d ON e.d_id = d.id;
