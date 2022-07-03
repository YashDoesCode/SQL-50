-- Match each employee with the name of their direct manager
CREATE TABLE emp (
  id INT,
  n TEXT,
  m_id INT
);

INSERT INTO emp VALUES
(1, 'Alice', NULL),
(2, 'Bob', 1),
(3, 'Charlie', 1),
(4, 'Dave', 2);

SELECT e.n AS emp, m.n AS mgr FROM emp e LEFT JOIN emp m ON e.m_id = m.id;
