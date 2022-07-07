-- Join employees, assignments, and projects to show project staffing
CREATE TABLE emp (
  id INT,
  n TEXT
);

CREATE TABLE proj (
  id INT,
  pname TEXT
);

CREATE TABLE asgn (
  e_id INT,
  p_id INT
);

INSERT INTO emp VALUES (1, 'Alice'), (2, 'Bob');
INSERT INTO proj VALUES (100, 'Cloud Migration'), (200, 'Data Pipeline');
INSERT INTO asgn VALUES (1, 100), (1, 200), (2, 100);

SELECT e.n, p.pname FROM emp e JOIN asgn a ON e.id = a.e_id JOIN proj p ON a.p_id = p.id;
