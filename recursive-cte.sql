-- Traverse an employee-manager organizational tree to compute reporting depth
CREATE TABLE emp (
  id INT,
  n TEXT,
  m_id INT
);

INSERT INTO emp VALUES
(1, 'CEO', NULL),
(2, 'VP Eng', 1),
(3, 'Eng Lead', 2),
(4, 'Staff Eng', 3);

WITH RECURSIVE org_tree AS (
  SELECT id, n, m_id, 0 AS lvl FROM emp WHERE m_id IS NULL
  UNION ALL
  SELECT e.id, e.n, e.m_id, o.lvl + 1 FROM emp e JOIN org_tree o ON e.m_id = o.id
)
SELECT id, n, lvl FROM org_tree ORDER BY lvl, id;
