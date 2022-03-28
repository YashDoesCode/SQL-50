-- Retrieve unique department and role combinations
CREATE TABLE emp (
  id INT,
  dept TEXT,
  role TEXT
);

INSERT INTO emp VALUES
(1, 'Eng', 'Dev'),
(2, 'Eng', 'Dev'),
(3, 'Eng', 'QA'),
(4, 'Sales', 'Rep');

SELECT DISTINCT dept, role FROM emp;
