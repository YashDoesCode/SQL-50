-- Return all departments and matching employee info using right outer join
CREATE TABLE emp (
  id INT,
  n TEXT,
  d_id INT
);

CREATE TABLE dept (
  id INT,
  dname TEXT
);

INSERT INTO emp VALUES (10, 'Alice', 1), (11, 'Bob', 2);
INSERT INTO dept VALUES (1, 'Finance'), (3, 'Legal');

SELECT e.n, d.dname FROM emp e RIGHT JOIN dept d ON e.d_id = d.id;
