-- Find suppliers that provide at least one in-stock part
CREATE TABLE supp (
  id INT,
  n TEXT
);

CREATE TABLE part (
  id INT,
  s_id INT,
  qty INT
);

INSERT INTO supp VALUES (1, 'Acme'), (2, 'Global'), (3, 'Apex');
INSERT INTO part VALUES (10, 1, 50), (11, 1, 20), (12, 2, 0);

SELECT s.id, s.n FROM supp s WHERE EXISTS (SELECT 1 FROM part p WHERE p.s_id = s.id AND p.qty > 0);
