-- Combine permanent and contract employee logs retaining all records
CREATE TABLE perm (
  id INT,
  n TEXT
);

CREATE TABLE cntr (
  id INT,
  n TEXT
);

INSERT INTO perm VALUES (1, 'Alice'), (2, 'Bob');
INSERT INTO cntr VALUES (3, 'Charlie'), (4, 'Alice');

SELECT n, 'perm' AS typ FROM perm
UNION ALL
SELECT n, 'cntr' AS typ FROM cntr;
